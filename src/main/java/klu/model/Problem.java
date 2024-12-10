package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="problem")
public class Problem {
	  @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    @Column(name = "id") 
	    Long id;
	  	@Column(name="name")
	    String name;
	  	@Column(name="smail")
	    String smail;
	  	@Column(name="mail")
	    String mail;
	  	@Column(name="problem")
	    String problem;
	  	@Column(name="description")
	    String description;
	  	public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		String status;
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getSmail() {
			return smail;
		}
		public void setSmail(String smail) {
			this.smail = smail;
		}
		public String getMail() {
			return mail;
		}
		public void setMail(String mail) {
			this.mail = mail;
		}
		public String getProblem() {
			return problem;
		}
		public void setProblem(String problem) {
			this.problem = problem;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		@Override
		public String toString() {
			return "Problem [id=" + id + ", name=" + name + ", smail=" + smail + ", mail=" + mail + ", problem="
					+ problem + ", description=" + description + "]";
		}
	  	
}
