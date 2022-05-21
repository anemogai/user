package com.example.demo.controller;


import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String done(){
        return "done";
    }

    @GetMapping("/signup")
    public String signup(@ModelAttribute("user") User user){
        return "signup";
    }

    @PostMapping("/signup")
    public String signUp(@Valid User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "signup";
        }
        userService.addUser(user.getName(), user.getGender(), user.getPassword(), user.getEmail());
        return "redirect:done";
    }

}
