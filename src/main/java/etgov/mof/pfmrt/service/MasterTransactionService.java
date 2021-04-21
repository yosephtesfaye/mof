package etgov.mof.pfmrt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.dao.MasterTransactionRepository;
import etgov.mof.pfmrt.model.MasterTransaction;

@Service
public class MasterTransactionService {
	
	@Autowired
	private MasterTransactionRepository  masterTransactionRepository;
	
	
	public List<MasterTransaction> getMasterTransaction()
	{
		 
		return masterTransactionRepository.findAll();
	}
		
	
	public Optional <MasterTransaction> findById(Integer id){
			    return  masterTransactionRepository.findById(id);
		}
	
	public void delete(Integer id) {
		masterTransactionRepository.deleteById(id);
	}
	
	 public Optional<MasterTransaction> getFile(Integer fileId) {
		  return masterTransactionRepository.findById(fileId);
	  }

	public void save(MasterTransaction trans) {
		// TODO Auto-generated method stub
		masterTransactionRepository.save(trans);
	}
	
	
	
	public MasterTransaction get(Integer id) {
		return masterTransactionRepository.findById(id).get();
	}
	
	

}

