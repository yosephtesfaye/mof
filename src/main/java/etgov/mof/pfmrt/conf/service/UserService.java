package etgov.mof.pfmrt.conf.service;

import etgov.mof.pfmrt.conf.exception.UsernameOrIdNotFound;
import etgov.mof.pfmrt.conf.util.ChangePasswordForm;
import etgov.mof.pfmrt.conf.model.User;

public interface UserService {
	public Iterable<User> getAllUsers();

	public User createUser(User user) throws Exception;

	public User getUserById(Long id) throws Exception;
	
	public User updateUser(User user) throws Exception;
	
	public void deleteUser(Long id) throws UsernameOrIdNotFound;
	
	public User changePassword(ChangePasswordForm form) throws Exception;

	public User getUserByUsername(String un);

	
}

