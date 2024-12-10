package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import klu.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	@Query("select count(U) from User U where U.username=:uname")
	public int validateUsername(@Param("uname") String username);

	@Query("select count(U) from User U where U.username=:uname and U.password=:pwd")
	public int valdateCredentials(@Param("uname") String uname, @Param("pwd") String pwd);
	
	// Method to find all users
    @Query("SELECT u FROM User u")
    List<User> findAllUsers();

}