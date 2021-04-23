package etgov.mof.pfmrt.conf.exception;

public class UsernameOrIdNotFound extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1668398822129870029L;

	public UsernameOrIdNotFound() {
		super("User or Id not found");
	}


	public UsernameOrIdNotFound(String message) {
		super(message);
	}
}
