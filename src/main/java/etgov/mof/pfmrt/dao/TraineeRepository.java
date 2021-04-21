package etgov.mof.pfmrt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.model.Trainee;

@Repository
public interface TraineeRepository extends JpaRepository<Trainee, Integer> {

}
