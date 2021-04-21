package etgov.mof.pfmrt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.dao.TraineeRepository;
import etgov.mof.pfmrt.model.Trainee;

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
	   
	   public Optional<Trainee> findById(Integer id){
		   return traineeRepository.findById(id);
	       }
	   
	   public void delete (Integer id) {
		   traineeRepository.deleteById(id);
	   }
	   
	   
	   
	   

}
