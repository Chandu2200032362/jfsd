package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import klu.model.Contact;
import klu.model.ContactManager;
import klu.model.Politician;
import klu.model.PoliticianManager;
import klu.model.Problem;
import klu.model.ProblemManager;
import klu.model.User;
import klu.model.UserManager;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
@RequestMapping("/")
public class ViewController {
	
	@Autowired
	private UserManager UM;
	
	@Autowired
	private ProblemManager pm;
	
	@Autowired
	PoliticianManager p;
	
	@Autowired
	ContactManager cm;

	@GetMapping("/")
	public ModelAndView index() 
	{
		ModelAndView MV = new ModelAndView();
		MV.setViewName("index");
		return MV;
	}
	
	
	@GetMapping("/home")
	public ModelAndView home() 
	{
		ModelAndView MV = new ModelAndView();
		MV.setViewName("home");
		return MV;
	}

	@GetMapping("/signup")
	public ModelAndView signup() 
	{
		ModelAndView MV = new ModelAndView();
		MV.setViewName("signup");
		return MV;
	}
	@PostMapping("/insertuser")
	  public ModelAndView insertuser(HttpServletRequest request) 
	  {
	   
	    	String firstname = request.getParameter("T1");
		    String lastname = request.getParameter("T2");
		    String  mobileno = request.getParameter("T3");
		    String email = request.getParameter("T4");
		    String username = request.getParameter("T5");
		    String password = request.getParameter("T6");
		    
		    User user = new User();
		    user.setFirstname(firstname);
		    user.setLastname(lastname);
		    user.setMobileno(mobileno);
		    user.setEmail(email);
		    user.setUsername(username);
		    user.setPassword(password);
		    
		    String message = UM.saveUser(user);
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("home");
		    
		    return mv;
	    
	  }
	@PostMapping("/insertproblem")
	public ModelAndView insertproblem(HttpServletRequest req) {
		String name = req.getParameter("T1");
		String smail = req.getParameter("T2");
		String mail = req.getParameter("T4");
		String problem = req.getParameter("T3");
		String description = req.getParameter("T5");
		
		Problem  p = new Problem();
		p.setName(name);
		p.setSmail(smail);
		p.setMail(mail);
		p.setProblem(problem);
		p.setDescription(description);
		
		String msg = pm.saveProblem(p);
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("cHome");
		return mv;
		
	}
	@PostMapping("/insertc")
    public ModelAndView insertc(HttpServletRequest request) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String problem = request.getParameter("problem");

        Contact c = new Contact();
        c.setName(name);
        c.setEmail(email);
        c.setProblem(problem);

        String msg = cm.saveContact(c);

        // Redirect to a different view or display a success message
        ModelAndView mv = new ModelAndView();
        mv.addObject("msg", msg);
        mv.setViewName("cHome");
        return mv;
    }
	@PostMapping("/insertp")
	  public ModelAndView insertp(HttpServletRequest request) 
	  {
	   
	    	String firstname = request.getParameter("T1");
		    String lastname = request.getParameter("T2");
		    String  mobileno = request.getParameter("T3");
		    String email = request.getParameter("T4");
		    String username = request.getParameter("T5");
		    String password = request.getParameter("T6");
		    
		    Politician user = new Politician();
		    user.setFirstname(firstname);
		    user.setLastname(lastname);
		    user.setMobileno(mobileno);
		    user.setEmail(email);
		    user.setUsername(username);
		    user.setPassword(password);
		    
		    String message = p.savePolitician(user);
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("pHome");
		    
		    return mv;
	    
	  }
	
	
}
