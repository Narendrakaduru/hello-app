package com.hello.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("/listen")
    public String Listen(){
        return "Listen to me Hello!";
    }
}
