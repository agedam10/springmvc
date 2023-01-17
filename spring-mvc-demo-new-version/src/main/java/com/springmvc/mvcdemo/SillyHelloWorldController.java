package com.springmvc.mvcdemo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/silly")
public class SillyHelloWorldController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloWorld_form";
    }
}
