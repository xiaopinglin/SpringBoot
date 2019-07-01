package com.cnzx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @RequestMapping(value = "printHelloWorld",method = RequestMethod.GET)
    @GetMapping(value = "printHelloWorld")
    public String printHelloWorld(){
        return "This Is My Frist SpringBoot Application 'HelloWolrd' Project ";
    }
}
