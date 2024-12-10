package klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repository.ContactRepository;

@Service
public class ContactManager {
	
	@Autowired
	ContactRepository cr;
	public String saveContact(Contact C) {
		try {
			cr.save(C);
			return "Thanks for feedback";
		}catch (Exception e) {
			return e.getMessage();
		}
	}

}
