package etgov.mof.pfmrt.conf.dao;

 
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.conf.model.User;

@Repository

public interface UserRepository extends CrudRepository<User, Long> {

	public Optional<User> findByUsername(String username);
	
	@Query("select u from User u where u.username =:username")
	public User getUserByUsername(@Param("username") String username);
	
	

	
 }

