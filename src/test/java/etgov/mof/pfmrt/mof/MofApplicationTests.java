package etgov.mof.pfmrt.mof;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import etgov.mof.pfmrt.model.Course;
import etgov.mof.pfmrt.service.CourseService;

@SpringBootTest

class MofApplicationTests {

	@Test
	void contextLoads() {
	}

	@Autowired
	static
	CourseService cservice;
	 public static void main(String args[])
	 {
		 testdisplay();
	 }
	 public static void testdisplay () {
		 
		 Course course = new Course();
		 course.setCoursename("maths");
		 course.setHour(4);
		 cservice.save(course);
		 System.out.println(course.toString());
	 }
}
