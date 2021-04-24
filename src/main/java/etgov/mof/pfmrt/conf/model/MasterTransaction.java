package etgov.mof.pfmrt.conf.model;

import javax.persistence.Column;
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

import etgov.mof.pfmrt.conf.util.Auditable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor

@EqualsAndHashCode(callSuper=false)
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
@DynamicUpdate
  public class MasterTransaction extends Auditable<String> {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long transaction_id;
	 	    
	    private String upload_doc;
		//private String doctype;
		private String status;
		//private Date submission_date;  replaced by auditable createdDate
		// private Date verifydate;
		// private String verify by     // replaced by auditable 
		
		@Column(length=50)
		private String remarks;
		
	
		public String getRemarks() {
			return remarks;
		}

		public void setRemarks(String remarks) {
			this.remarks = remarks;
		}

		@JsonIgnore
		@ManyToOne
		@JoinColumn(name="user_id", updatable =false)
		private User user;
		
		@ManyToOne
		@JoinColumn(name="organizaid", insertable =false,updatable =false)
		private Organization organiza;
		String organizaid;
		
		public String getOrganizaid() {
			return organizaid;
		}

		public void setOrganizaid(String organizaid) {
			this.organizaid = organizaid;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		
		@ManyToOne
		@JoinColumn(name="trans_doc_id",insertable=false,updatable=false)
		private Document transactiondocument;
		private  String transc_doc_id;
		

		public Document getTransactiondocument() {
			return transactiondocument;
		}

		public void setTransactiondocument(Document transactiondocument) {
			this.transactiondocument = transactiondocument;
		}

  }

