package com.hello.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("/hello")
    public String Listen(){
        return "Hello this is a hello API controller!";
    }
}
