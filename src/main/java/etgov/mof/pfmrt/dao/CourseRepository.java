package etgov.mof.pfmrt.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import etgov.mof.pfmrt.model.Course;

public interface CourseRepository extends JpaRepository<Course, Integer> {
    
}
