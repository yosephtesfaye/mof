package etgov.mof.pfmrt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.model.Organization;

@Repository
public interface OrganizationRepository extends JpaRepository<Organization, String> {

}
