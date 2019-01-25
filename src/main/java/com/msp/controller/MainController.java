package com.msp.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping(value = "/login")
    public ModelAndView login() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String role = "[ROLE_ANONYMOUS]";
        boolean isAuthenticated = role.equals(auth.getAuthorities().toString());

        if (isAuthenticated) {
            return new ModelAndView("web/login-form");
        } else {
            return new ModelAndView("redirect:/");
        }
    }

    @GetMapping(value = {"/"})
    public String home() {
        return "web/home-public";
    }

    @GetMapping(value = "/403")
    public String accessDenied() {
        return "web/403";
    }

    @RequestMapping(value = "/home")
    public String privateHome(){
        return "web/home-private";
    }
}
