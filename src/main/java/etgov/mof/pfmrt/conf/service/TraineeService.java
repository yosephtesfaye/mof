package etgov.mof.pfmrt.conf.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.conf.dao.TraineeRepository;
import etgov.mof.pfmrt.conf.model.Trainee;

@Service
public class TraineeService {

	   @Autowired
	   private TraineeRepository  traineeRepository;
	   
	   public List<Trainee> getTrainees(){
		  return  traineeRepository.findAll();
	   }
	   
	   public void save(Trainee trainee) {
		   traineeRepository.save(trainee);
		   }
	   
	   public Optional<Trainee> findById(String train_id){
		   return traineeRepository.findById(train_id);
	       }
	   
	   public void delete (String train_id) {
		   traineeRepository.deleteById(train_id);
	   }
	   
	   
	   
	   

}
