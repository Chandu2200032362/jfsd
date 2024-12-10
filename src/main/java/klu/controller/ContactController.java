package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import klu.model.Contact;
import klu.model.ContactManager;

@RestController
@RequestMapping("/contact")
public class ContactController {
	 @Autowired
	    ContactManager cm;

	    @PostMapping("/csave")
	    public String save(@RequestParam String name, @RequestParam String email, @RequestParam String problem) {
	        Contact c = new Contact();
	        c.setName(name);
	        c.setEmail(email);
	        c.setProblem(problem);
	        return cm.saveContact(c);
	    }
}
