package etgov.mof.pfmrt.conf;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication

public class MofApplication {

	public static void main(String[] args) {
		SpringApplication.run(MofApplication.class, args);
		//System.out.println("hello world");
	}

}
