package etgov.mof.pfmrt.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;




@Repository
public interface MasterTransactionRepository extends JpaRepository<etgov.mof.pfmrt.model.MasterTransaction, Integer>

       {
        
       }


  




