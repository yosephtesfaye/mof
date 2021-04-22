package etgov.mof.pfmrt.conf.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class OrgPenalty {
      
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long orgpen_id;
	
	@ManyToOne
	@JoinColumn(name="org_pen_id",insertable=false,updatable=false)
	private PenaltyRule penaltyRule;
	private Long org_pen_id;
	
	private Date penalty_date;
	
	@ManyToOne
	@JoinColumn(name="org_pen_doc_id",insertable=false,updatable=false)
	private Document document;
	private String org_pen_doc_id;
	
	@ManyToOne
	@JoinColumn(name="orgpen_user_id",insertable =false ,updatable=false)
	private User user;
	private Long orgpen_user_id;
	
	private Integer penalty_level;
	
	private String org_head;
	
	private String org_director;
	
	private String status;
	
	private String penalty_letter;

	public Long getOrg_pen_id() {
		return org_pen_id;
	}

	public void setOrg_pen_id(Long org_pen_id) {
		this.org_pen_id = org_pen_id;
	}

	public Date getPenalty_date() {
		return penalty_date;
	}

	public void setPenalty_date(Date penalty_date) {
		this.penalty_date = penalty_date;
	}

	public Integer getPenalty_level() {
		return penalty_level;
	}

	public void setPenalty_level(Integer penalty_level) {
		this.penalty_level = penalty_level;
	}

	public String getOrg_head() {
		return org_head;
	}

	public void setOrg_head(String org_head) {
		this.org_head = org_head;
	}

	public String getOrg_director() {
		return org_director;
	}

	public void setOrg_director(String org_director) {
		this.org_director = org_director;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPenalty_letter() {
		return penalty_letter;
	}

	public void setPenalty_letter(String penalty_letter) {
		this.penalty_letter = penalty_letter;
	}

	

}
