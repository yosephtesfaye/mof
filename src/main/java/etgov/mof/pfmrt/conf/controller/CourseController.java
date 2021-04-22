package etgov.mof.pfmrt.conf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourseController {

	@GetMapping("/mycourse")
	  public String coursepage() {
		return "course";
		  
	  }
}
