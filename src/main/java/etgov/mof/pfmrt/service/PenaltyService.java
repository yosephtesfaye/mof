package etgov.mof.pfmrt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.dao.PenaltyRepository;
import etgov.mof.pfmrt.model.PenaltyRule;



@Service
public class PenaltyService {
	@Autowired
	private PenaltyRepository penaltyRepository;
	
	//Return list of penalty
	public List<PenaltyRule>  getAllPenalty() {
		
		return penaltyRepository.findAll();
	}

	public void save(PenaltyRule penalty) {
		// save penalty
		penaltyRepository.save(penalty);
	}
	
	//get by id
		public Optional<PenaltyRule> findById(Integer id) {
			return penaltyRepository.findById(id);
		}

		public void delete(Integer id) {
			// delete penalty rule by id
			penaltyRepository.deleteById(id);
			
		}

	
}
