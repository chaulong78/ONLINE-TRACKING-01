package com.msp.controller;

import com.msp.dto.UserDTO;
import com.msp.entity.User;
import com.msp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {

    @Autowired
    private HttpSession session;

    @Autowired
    private IUserService userService;

    @GetMapping(value = "")
    public ModelAndView showRegisterForm(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        boolean isAuthenticated = "[ROLE_ANONYMOUS]".equals(auth.getAuthorities().toString());
        UserDTO userDTO = new UserDTO();
        if (isAuthenticated) {
            model.addAttribute("userDTO", userDTO);
            return new ModelAndView("web/register-form");
        }

        return new ModelAndView("redirect:/");
    }

    @PostMapping(value = "/process")
    public ModelAndView processRegistration(@ModelAttribute("userDTO") @Valid UserDTO userDTO, BindingResult result) {
        User newUser = new User();

        /*Nếu ko xảy ra lỗi khi bind dữ liệu từ form vào object userDTO*/
        if (!result.hasErrors()) {
            newUser = userService.createUser(userDTO);
        }
        /* Nếu xảy ra lỗi khi bind dữ liệu */
        else if (result.hasErrors()) {
            session.setAttribute("message", "An error occurred while creating account. Please try again");
            return new ModelAndView("redirect:/register");
        }

        /* Nếu username và email đã tồn tại */
        if (newUser == null) {
            session.setAttribute("message", "Username or email has been used. Please try again");
            return new ModelAndView("redirect:/register");
        }

        session.setAttribute("message", "Create a new account successfully");
        return new ModelAndView("redirect:/login");
    }
}
