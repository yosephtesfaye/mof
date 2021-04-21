package etgov.mof.pfmrt.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class Trainee {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
  private Integer id;
  
	private String firstname;
	private String lastname;
	private String examscore;
	
	
	public String getExamscore() {
		return examscore;
	}
	public void setExamscore(String examscore) {
		this.examscore = examscore;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date startdate;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date enddate;
	
	@ManyToOne
	@JoinColumn(name="traineecourseid",insertable=false,updatable=false)
	private Course course;
	private Integer traineecourseid;
	
	
	@ManyToOne
	@JoinColumn(name="traineeorgid",insertable=false,updatable =false)
	private Organization organization;
	private String traineeorgid;
	
	
		
	public String getTraineeorgid() {
		return traineeorgid;
	}
	public void setTraineeorgid(String traineeorgid) {
		this.traineeorgid = traineeorgid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Integer getTraineecourseid() {
		return traineecourseid;
	}
	public void setTraineecourseid(Integer traineecourseid) {
		this.traineecourseid = traineecourseid;
	}
	
}
