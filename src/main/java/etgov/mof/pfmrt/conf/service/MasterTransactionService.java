package etgov.mof.pfmrt.conf.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.conf.dao.MasterTransactionRepository;
import etgov.mof.pfmrt.conf.model.MasterTransaction;

@Service
public class MasterTransactionService {
	
	@Autowired
	private MasterTransactionRepository  masterTransactionRepository;
	
	
	public List<MasterTransaction> getMasterTransaction(String keyword)
	{
		 if (keyword != null) {
			return masterTransactionRepository.findByDirectorate(keyword);
		}
		else
		return masterTransactionRepository.findAll();
	}
		
	public List <MasterTransaction> getOrgTrans(Long  id){
		return masterTransactionRepository.findTransactionByOrg(id);
	}
	public Optional <MasterTransaction> findById(Long id){
			    return  masterTransactionRepository.findById(id);
		}
	
	public void delete(Long id) {
		masterTransactionRepository.deleteById(id);
	}
	
	
	public void save(MasterTransaction trans) {
		// TODO Auto-generated method stub
		masterTransactionRepository.save(trans);
	}
	
	
	public void updateReportStatusWithCustomQuery(Integer id ,String reportstatus) {
		masterTransactionRepository.updateReportStatus(id, reportstatus);
	}
	
	public MasterTransaction get(Long id) {
		return masterTransactionRepository.findById(id).get();
	}
	
	

}

