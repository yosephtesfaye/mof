package etgov.mof.pfmrt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import etgov.mof.pfmrt.dao.CourseRepository;
import etgov.mof.pfmrt.model.Course;


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
	
	public Optional<Course>findById(Integer id){
		return courseRepository.findById(id);
	}
	
	
	public void delete(Integer id) {
		courseRepository.deleteById(id);
	}

}
