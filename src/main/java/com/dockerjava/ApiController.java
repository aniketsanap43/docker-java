package com.dockerjava;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {
	
	@GetMapping("/")
	@ResponseBody
	public String getHomePageMessage() {
		return "Welcome to Home Page of Docker + Java Application";
	}

}
