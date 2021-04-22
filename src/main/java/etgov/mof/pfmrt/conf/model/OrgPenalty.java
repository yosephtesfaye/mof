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
	private String org_pen_id;
	
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

	

}
