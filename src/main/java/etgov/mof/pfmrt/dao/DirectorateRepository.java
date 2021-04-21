package etgov.mof.pfmrt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.model.Directorate;

@Repository
public interface DirectorateRepository extends JpaRepository<Directorate, String> {

	
	   
}
