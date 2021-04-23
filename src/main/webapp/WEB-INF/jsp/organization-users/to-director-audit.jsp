<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>


<div class="container">

	<div class="panel panel-primary">
	
		<div class="panel-heading">Send Your Reports To Audit Directorate</div>
		
		<br></br>
		<form action="/uploadFiles" method="post" enctype="multipart/form-data">
		<label> Directorate :</label>
		 <br>
		<input type="text" name="name" value="Audit" disabled>
		<br>
		<br>
		<label for="accountreports">Choose a Report Type :</label>
        <select class="form-control" id="ddlDocumentAdd" name="transactiondocumentid" required>
			       <option>-SELECT-</option>
			       	    
			       <c:forEach items="${documents}" var="dir">
				      <option value="${dir.id}">${dir.reportype}
				   </option>
				   </c:forEach>
			    </select>	
				    <br>
            
  <label for="files">Select files:</label>
  <input type="file" id="files" name="files" multiple  required><br><br>
  <input type="submit">
</form>
    
		</div>
	</div>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>


  