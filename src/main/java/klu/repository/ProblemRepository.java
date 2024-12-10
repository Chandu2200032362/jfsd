package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import klu.model.Problem;
import klu.model.User;

@Repository
public interface ProblemRepository extends JpaRepository<Problem, Long>{
	
	@Query("select count(*) from Problem P")
	public int totalRecords() ;
	

	// Method to find all users
    @Query("SELECT p FROM Problem p")
    List<User> findAllProblems();
}
