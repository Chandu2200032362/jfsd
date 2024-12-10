package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import klu.model.Politician;
import klu.model.PoliticianManager;

@RestController
@RequestMapping("/politician")
public class PoliticianController {

	@Autowired
	PoliticianManager pm;
	@PostMapping("/save")
	public String save(@RequestBody Politician P) {
		return pm.savePolitician(P);
	}


	@PostMapping("/login")
	public String login(@RequestBody Politician P) {
		return pm.loginPolitician(P.getUsername(), P.getPassword());

	}
	@GetMapping("/readP") //retriving the data read operation
	public String readPolitian() {
		
		return pm.getPolitician().toString(); //get faculty is in list we need to convert to string
		
	}
	@PutMapping("update") //-> for update operation
	public String updatefaculty(@RequestBody Politician F) {
		
		return pm.updatePolitician(F);
	}
	@DeleteMapping("/delete") //->for delete operation
	public String deleteFaculty(@RequestParam("ID") Long id) {
		return pm.deleteFaculty(id);
	}
}
