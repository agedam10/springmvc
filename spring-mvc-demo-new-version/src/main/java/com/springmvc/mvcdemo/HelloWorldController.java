package com.springmvc.mvcdemo;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloWorld_form";
    }
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloWorld";
    }

    //Add data to the model
    @RequestMapping("/processFormv2")
    public String processFormV2(HttpServletRequest request, Model model) {
        //read the request parameter from the html form
        String theName = request.getParameter("studentName");
        //do something with the data
       theName = theName.toUpperCase();
       //message
       String result = "Hi !! " + theName;
       //add message to the model
        model.addAttribute("message",result);

        return "helloWorld";
    }

    //using requestParam annotation
    @RequestMapping("/processFormv3")
    public String processFormV3(@RequestParam("studentName") String theName, Model model) {
        //do something with the data
        theName = theName.toUpperCase();
        //message
        String result = "Yo !! " + theName;
        //add message to the model
        model.addAttribute("message",result);

        return "helloWorld";
    }
}
