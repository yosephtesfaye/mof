package etgov.mof.pfmrt.conf.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.conf.dao.CourseRepository;
import etgov.mof.pfmrt.conf.model.Course;


@Service
public class CourseService {
	
	@Autowired
	private CourseRepository courseRepository;
	
	public List<Course> getAllCourse(){
		
		return courseRepository.findAll();
		//read operation from table course
		}
	
	public void save(Course course) {
		courseRepository.save(course);
	}
	
	public Optional<Course>findById(String course_id){
		return courseRepository.findById(course_id);
	}
	
	
	public void delete(String course_id) {
		courseRepository.deleteById(course_id);
	}

}
