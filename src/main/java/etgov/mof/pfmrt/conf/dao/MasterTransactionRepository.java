package etgov.mof.pfmrt.conf.dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.conf.model.MasterTransaction;
import etgov.mof.pfmrt.conf.model.User;

@Repository
public interface MasterTransactionRepository extends JpaRepository<MasterTransaction,Long> {

	 
}
