package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import klu.model.Politician;
import klu.model.User;

public interface PoliticianRepository extends JpaRepository<Politician, Long>{

	@Query("select count(U) from Politician U where U.username=:uname")
	public int validateUsername(@Param("uname") String username);

	@Query("select count(U) from Politician U where U.username=:uname and U.password=:pwd")
	public int valdateCredentials(@Param("uname") String uname, @Param("pwd") String pwd);
	
	// Method to find all users
    @Query("SELECT p FROM Politician p")
    List<User> findAllUsers();
}

