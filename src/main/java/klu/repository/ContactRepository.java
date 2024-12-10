package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.Contact;

public interface ContactRepository extends JpaRepository<Contact,Long>{
	
}
