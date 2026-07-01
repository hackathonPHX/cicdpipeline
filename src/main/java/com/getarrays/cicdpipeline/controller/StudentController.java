package com.getarrays.cicdpipeline.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/students")
public class StudentController {
	
	@GetMapping("/getResponse")
	public String getResponse() {
		return "Hello World!! Welcome to cicd pipeline. Automation.....";
	}
}
