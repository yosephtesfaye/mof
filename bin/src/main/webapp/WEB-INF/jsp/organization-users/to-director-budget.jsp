<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>

<div class="container">

	<div class="panel panel-primary">
		<div class="panel-heading">Send Your Reports To Budget Directorate</div>
		
		<br></br>
		<form action="/listofaccountreports" method="post" enctype="multipart/form-data">
		 <label> Directorate :</label>
		 <br>
		<input type="text" name="name" value="Budget Directorate" disabled>
		<br>
		<br>
		<label for="accountreports">Choose a Report Type :</label>
        <select name="accountreports" id="accountreports" required>
    <option value="">None</option>
    <option value="1st  quarter">1st  quarter</option>
    <option value="2nd Quarter">2nd Quarter</option>
    <option value="3rd Quarter">3rd Quarter </option>
    <option value="4th Quarter">4th Quarter </option>
  </select>
				    <br>
            
  <label for="files">Select files:</label>
  <input type="file" id="files" name="files" multiple  required><br><br>
  <input type="submit">
</form>
    
		</div>
	</div>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>


  