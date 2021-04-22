<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> User  Profile</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.1.7/css/fixedHeader.dataTables.min.css"/>
 <script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
 </head>
 <body>
<div class="container">
<br>
<br>

	<div class="card">
	
	<div class="card-body">
	
		<table class="table table-striped table-advance  table-bordered " id="datatable"  >
                
                <thead class="thead-dark">
                  <tr>
                  <th scope ="col"> ID  </th>
                  
                  <th scope="col">${user.id }<span text="${user.id }"></span></th>
                  
                
                  </tr>
                </thead>
                
                <tbody>
                
                  
						<tr>
						<th scope ="col"> First Name  </th>
						    <td>${user.firstName}</td>
						
						</tr>
						<tr>
						<th scope ="col"> Last Name  </th>
						    <td>${user.lastName}</td>
						
						</tr>
						
						<tr>
						<th scope ="col"> User Name  </th>
						    <td>${user.username}</td>
						
						</tr>
						<tr>
						<th scope ="col"> Email  </th>
						    <td>${user.email}</td>
						
						</tr>
						
						
				
        </tbody>
        
       </table>
	
	
	</div>
	</div>
	
</div>
<script type ="text/javascript"  src="js/user.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>
<script>
$(document).ready( function() {
	  $('#datatable').dataTable( {
	    "iDisplayLength": 6
	    
	  } );
	} ) 

</script>
</body>
</html>

  