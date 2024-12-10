package klu.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import klu.repository.PoliticianRepository;

@Service
public class PoliticianManager {
	
	@Autowired
	PoliticianRepository pr;
	public String savePolitician(Politician P) {
		try {

			if (pr.validateUsername(P.username) > 0)
				throw new Exception("Username already exists. Please choose a different one.");

			pr.save(P);
			return " New User has been added";

		} catch (Exception e) {
			return e.getMessage();

		}
	}

	public String loginPolitician(String uname, String pwd) {
		try {
			if (pr.valdateCredentials(uname, pwd) == 0) {
				throw new Exception("401");
			}
			return "200";
		} catch (Exception e) {
			return e.getMessage();
			// TODO: handle exception
		}
	}
	
	//Convert into JSON
		public String toJSON(Object obj)
		{
			GsonBuilder GB = new GsonBuilder();
			Gson G = GB.create();
			return G.toJson(obj);
		}
		
	public List<String> getPolitician(){
			
			List<String> f = new ArrayList<String>();//read opearations from database and returns all the records
			for(Politician F : pr.findAll()) { //storing the data into the F findall is used for returning all the data
				f.add(toJSON(F)); //for converstion of json 
				
				
			}
			return f;
			
		}
	public String updatePolitician(Politician F) {
		pr.save(F); //Update OPERATION
		
		Map<String, String> resp = new HashMap<String,String>();
		resp.put("code", "200");
		resp.put("msg", "Politician has been Updated");
		return toJSON(resp);
	}
	
	public String deleteFaculty(Long id) {
		pr.deleteById(id);//delete
		Map<String, String> resp = new HashMap<String,String>();
		resp.put("code", "200");
		resp.put("msg", "Politician has been Deleted");
		return toJSON(resp);
		
	}
}
