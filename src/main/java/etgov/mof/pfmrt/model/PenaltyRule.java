package etgov.mof.pfmrt.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity(name ="penalty_rule")
@AllArgsConstructor
@NoArgsConstructor
@Data

public class PenaltyRule {
	
       @Id
       private String penalty_id;
       
       @ManyToOne
   	@JoinColumn(name="doc_id",insertable=false,updatable=false)
       private String doc_id;
       
       private Integer penalty_num_days;
       
	   private Integer penalty_level;
	   private String  penalty_type;
	   
	   private String director_penalty;
	   private String minister_penalty;
	   private float amount;
	public String getPenalty_id() {
		return penalty_id;
	}
	public void setPenalty_id(String penalty_id) {
		this.penalty_id = penalty_id;
	}
	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}
	public Integer getPenalty_num_days() {
		return penalty_num_days;
	}
	public void setPenalty_num_days(Integer penalty_num_days) {
		this.penalty_num_days = penalty_num_days;
	}
	public Integer getPenalty_level() {
		return penalty_level;
	}
	public void setPenalty_level(Integer penalty_level) {
		this.penalty_level = penalty_level;
	}
	public String getPenalty_type() {
		return penalty_type;
	}
	public void setPenalty_type(String penalty_type) {
		this.penalty_type = penalty_type;
	}
	public String getDirector_penalty() {
		return director_penalty;
	}
	public void setDirector_penalty(String director_penalty) {
		this.director_penalty = director_penalty;
	}
	public String getMinister_penalty() {
		return minister_penalty;
	}
	public void setMinister_penalty(String minister_penalty) {
		this.minister_penalty = minister_penalty;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	   
	   
	   
	   
	
	   
}
