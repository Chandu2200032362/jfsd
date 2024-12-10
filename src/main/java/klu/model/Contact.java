package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="contact_user")

public class Contact {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	long id;
	@Column(name="name")
	String name;
	@Column(name="email")
	String email;
	@Column(name="problem")
	String problem;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	@Override
	public String toString() {
		return "Contact [name=" + name + ", email=" + email + ", problem=" + problem + "]";
	}
	
	
}
