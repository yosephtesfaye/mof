package etgov.mof.pfmrt.conf.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.conf.model.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long>{

	public Role findByName(String name);
}
