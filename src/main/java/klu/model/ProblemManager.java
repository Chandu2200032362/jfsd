package klu.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import klu.repository.ProblemRepository;

@Service
public class ProblemManager {
    @Autowired
    ProblemRepository pr;

    public String saveProblem(Problem P) {
        try {
            pr.save(P);
            return "Problem Submitted";
        } catch (Exception e) {
            return e.getMessage();
        }
    }
    public List<String> getProblem(){
		
		List<String> f = new ArrayList<String>();//read opearations from database and returns all the records
		for(Problem F : pr.findAll()) { //storing the data into the F findall is used for returning all the data
			f.add(toJSON(F)); //for converstion of json 
			
			
		}
		return f;
		
	}
    public String updateFaculty(Long id, Problem F) {
        // Check if the Faculty record exists
        Optional<Problem> existingFaculty = pr.findById(id);
        if (existingFaculty.isPresent()) {
            // Update the existing Faculty record with the new values
            Problem updatedFaculty = existingFaculty.get();
            updatedFaculty.setStatus(F.getStatus()); // Set other fields as necessary
            
            // Add any additional fields to update here
            
            pr.save(updatedFaculty); // Save the updated record
            
            Map<String, String> resp = new HashMap<>();
            resp.put("code", "200");
            resp.put("msg", "Faculty has been Updated");
            return toJSON(resp);
        } else {
            // If the record does not exist
            Map<String, String> resp = new HashMap<>();
            resp.put("code", "404");
            resp.put("msg", "Faculty not found");
            return toJSON(resp);
        }
    }

  //Convert into JSON
  		public String toJSON(Object obj)
  		{
  			GsonBuilder GB = new GsonBuilder();
  			Gson G = GB.create();
  			return G.toJson(obj);
  		}
    
}
