package etgov.mof.pfmrt.conf.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.DynamicUpdate;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity(name="org_penalty")
@Data
@NoArgsConstructor
@AllArgsConstructor

@EqualsAndHashCode(callSuper=false)
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
@DynamicUpdate
public class OrgPenalty {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer org_pen_id;
	 
	    @ManyToOne
		@JoinColumn(name="penalty_id",insertable=false,updatable=false)
	    private PenaltyRule penalty_rule;
	    private  String penalty_id;   
	    
   	    private Date penalty_date;  
	    private Integer penalty_level;
		
		private String org_head;
		private String org_director;
		private String status;

		@JsonIgnore
		@ManyToOne
		@JoinColumn(name="user_id", updatable =false)
		private User user;
		
		@ManyToOne
		@JoinColumn(name="org_id", insertable =false,updatable =false)
		private Organization organiza;
		String org_id;
		
		

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		
		@ManyToOne
		@JoinColumn(name="doc_id",insertable=false,updatable=false)
		private Document transactiondocument;
		private  String doc_id;
		

		public Document getTransactiondocument() {
			return transactiondocument;
		}

		public void setTransactiondocument(Document transactiondocument) {
			this.transactiondocument = transactiondocument;
		}

		public String getDoc_id() {
			return doc_id;
		}

		public void setDoc_id(String doc_id) {
			this.doc_id = doc_id;
		}

		
		
}
