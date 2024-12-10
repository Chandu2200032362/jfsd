package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import klu.model.User;
import klu.model.UserManager;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserManager UM;

	@PostMapping("/save")
	public String save(@RequestBody User U) {
		return UM.saveUser(U);
	}


	@PostMapping("/login")
	public String login(@RequestBody User U) {
		return UM.loginUser(U.getUsername(), U.getPassword());

	}
	@GetMapping("/read") //retriving the data read operation
	public String readFacutly() {
		
		return UM.getUser().toString(); //get faculty is in list we need to convert to string
		
	}
	
}