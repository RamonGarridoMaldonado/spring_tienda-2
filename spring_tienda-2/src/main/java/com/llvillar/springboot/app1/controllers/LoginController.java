package com.llvillar.springboot.app1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {
    
    @RequestMapping(value="/login")
    public String login() {
        return "login";
    }


 @RequestMapping(value="/welcome")
    public String welcome() {
        return "welcome";
    }
}
