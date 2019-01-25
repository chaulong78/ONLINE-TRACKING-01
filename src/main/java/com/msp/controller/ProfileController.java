package com.msp.controller;

import com.msp.entity.User;
import com.msp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/home/profile")
public class ProfileController {

    @Autowired
    private HttpSession session;

    @Autowired
    private IUserService userService;

    @GetMapping(value = "")
    public ModelAndView viewProfile() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        String userName = auth.getName();
        User user = userService.findByUserName(userName);

        session.setAttribute("user", user);
        return new ModelAndView("profile/profile-view");
    }

    @GetMapping(value = "/edit")
    public ModelAndView editProfile(){
        return new ModelAndView("profile/profile-edit");
    }


}
