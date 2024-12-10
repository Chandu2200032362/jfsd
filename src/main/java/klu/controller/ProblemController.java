package klu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import klu.model.Problem;
import klu.model.ProblemManager;

@RestController
@RequestMapping("/problem")
public class ProblemController {
    @Autowired
    ProblemManager pm;

    @PostMapping("/psave")
    public String save(@RequestParam String name,@RequestParam String smail,@RequestParam String mail,@RequestParam String problem,@RequestParam String description) {
       Problem p = new Problem();
       p.setName(name);
       p.setSmail(smail);
       p.setMail(mail);
       p.setProblem(problem);
       p.setDescription(description);
       return pm.saveProblem(p);
    }
    @GetMapping("/readPro") //retriving the data read operation
	public String readPolitian() {
		
		return pm.getProblem().toString(); //get faculty is in list we need to convert to string
		
	}
    @PutMapping("/updatepro/{id}")
    public String updateProblem(@PathVariable Long id, @RequestBody Problem F) {
        return pm.updateFaculty(id, F);
    }

}
