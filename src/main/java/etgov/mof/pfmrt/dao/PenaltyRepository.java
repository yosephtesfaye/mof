package etgov.mof.pfmrt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.model.PenaltyRule;


@Repository
public interface PenaltyRepository extends JpaRepository<PenaltyRule, Integer> {

}
