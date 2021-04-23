package etgov.mof.pfmrt.conf.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import etgov.mof.pfmrt.conf.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	User getUserByUsername(String un);

}
