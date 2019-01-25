package com.msp.controller.rest;

import com.msp.entity.User;
import com.msp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping(value = "/api")
public class RestProfileController {

    @Autowired
    private HttpSession session;

    @Autowired
    private IUserService userService;

    @PostMapping("/profile/{id}")
    public User getUser(@PathVariable int id){
        User user = userService.findById(id);
        return user;
    }

}
