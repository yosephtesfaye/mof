//package etgov.mof.pfmrt.conf.service
/*
import java.util.List;
import java.util.Optional;

import org.hibernate.Hibernate;

import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;



@Service

public class MyUserService {

	  
	  @Autowired private BCryptPasswordEncoder encoder;
	  
	   	    public List<User> ListUser(){
	    
	    	return myuserrepository.findAll();
	    }
	    
	    public void save(User user) {
	    	user.setPassword(encoder.encode(user.getPassword()));
	    	myuserrepository.save(user);
	    }
	    

	     
	    public void delete(Long id) {
	    	myuserrepository.deleteById(id);
	    }

		public User findByUsername(String un) {
			// TODO Auto-generated method stub
			return myuserrepository.getUserByUsername(un);
			
		}


		public User findById(Long id) {
		       User user = findById(id);
		       if(user!=null){
		           Hibernate.initialize(user.getRoles());
		       }
		       return user;

		
		
		
		
		
	    
		}

	    
		}
*/

	    
		

