package com.msp.controller;

import com.msp.entity.User;
import com.msp.service.IMailService;
import com.msp.service.IPasswordService;
import com.msp.entity.PasswordToken;
import com.msp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Calendar;

@Controller
@RequestMapping(value = "/forgot-password")
public class PasswordController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IPasswordService passwordService;

    @Autowired
    private IMailService mailService;

    @Autowired
    private HttpSession session;

    @GetMapping(value = "")
    public String showEnterEmailForm() {
        return "web/password-reset-enter-email-form";
    }

    @PostMapping(value = "/send-email")
    public ModelAndView sendEmail(@RequestParam("email") String email, HttpServletRequest request) {
        User user = userService.findByEmail(email);

        /* Nếu user ko tồn tại */
        if (user == null) {
            session.setAttribute("message", "Email address does not exist");
            return new ModelAndView("redirect:/forgot-password");
        }

        /* Nếu user bị khóa */
        if (!user.isEnabled()) {
            session.setAttribute("message", "Your account has been locked. Please contact support team");
            return new ModelAndView("redirect:/forgot-password");
        }

        /* Xoá token cũ nếu tồn tại, lưu token mới */
        passwordService.deleteByUserId(user.getId());
        PasswordToken passwordToken = passwordService.generatePasswordResetToken(user);
        passwordService.save(passwordToken);

        try {
            mailService.createResetPassword(passwordToken.getToken(), email);
        } catch (MailException e){
            e.printStackTrace();
            session.setAttribute("message", "An error occurred while sending confirmation email. Please try again");
            return new ModelAndView("redirect:/forgot-password");
        }

        session.setAttribute("message", "An confirmation email has been sent. Please check your inbox");
        return new ModelAndView("redirect:/forgot-password");
    }

    @GetMapping(value = "/confirm")
    public ModelAndView confirm(@RequestParam("token") String token) {
        PasswordToken passwordToken = passwordService.findByToken(token);

        if (passwordToken == null) {
            session.setAttribute("message", "Reset password token is not valid");
            return new ModelAndView("redirect:/forgot-password");
        }

        User user = passwordToken.getUser();
        /*Get calendar object*/
        Calendar cal = Calendar.getInstance();

        /*If token is expired*/
        if ((passwordToken.getExpiryDate().getTime()) - cal.getTime().getTime() <= 0) {
            session.setAttribute("message", "Reset password token is expired");
            return new ModelAndView("redirect:/forgot-password");
        }

        /* Delete token after confirm the email */
        passwordService.deleteById(passwordToken.getId());

        session.setAttribute("user", user);
        return new ModelAndView("redirect:/forgot-password/reset");
    }

    @GetMapping(value = "/reset")
    public ModelAndView showResetPasswordForm() {
        User user = (User) session.getAttribute("user");

        if (user != null) {
            return new ModelAndView("web/password-reset-form");
        } else {
            session.setAttribute("message", "Confirmation link is expired");
            return new ModelAndView("redirect:/forgot-password");
        }
    }

    @PostMapping(value = "/reset-process")
    public ModelAndView resetProcess(@RequestParam("password") String password) {
        User user = (User) session.getAttribute("user");
        session.removeAttribute("user");

        if (user == null) {
            session.setAttribute("message", "An error occurred while creating your new password. Please try again");
            return new ModelAndView("redirect:/forgot-password");
        }

        PasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(password));

        try {
            userService.save(user);
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("message", "An error occurred while creating your new password. Please try again");
            return new ModelAndView("redirect:/reset");
        }

        session.setAttribute("message", "Reset password success");
        return new ModelAndView("redirect:/login");
    }
}
