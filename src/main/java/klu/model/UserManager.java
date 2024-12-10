package klu.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import klu.repository.UserRepository;

@Service
public class UserManager {
	@Autowired
	UserRepository UR;

	public String saveUser(User U) {
		try {

			if (UR.validateUsername(U.username) > 0)
				throw new Exception("Username already exists. Please choose a different one.");

			UR.save(U);
			return " New User has been added";

		} catch (Exception e) {
			return e.getMessage();

		}
	}

	public String loginUser(String uname, String pwd) {
		try {
			if (UR.valdateCredentials(uname, pwd) == 0) {
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
	
public List<String> getUser(){
		
		List<String> f = new ArrayList<String>();//read opearations from database and returns all the records
		for(User F : UR.findAll()) { //storing the data into the F findall is used for returning all the data
			f.add(toJSON(F)); //for converstion of json 
			
			
		}
		return f;
		
	}
}