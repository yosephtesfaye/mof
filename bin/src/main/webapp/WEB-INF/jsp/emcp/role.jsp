<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> User Lists</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.1.7/css/fixedHeader.dataTables.min.css"/>
 <script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
 </head>
 <body>
<div class="container">
<br>
<br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal" >New Role </button>
<br><br>
	<div class="panel panel-primary">
					<table class="table table-striped table-advance  table-bordered " id="datatable"  >
                <thead class="thead-dark">
                  <tr>
                    <th><i class="icon_table"></i>Role Id:</th>
                   
                    <th><i class="icon_table"></i>Role Name:</th>
                     <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${rolelists}" var="role">
						<tr>
						    <td>${role.id}</td>
						    
						    <td>${role.name}</td>
							
							
							
							<td><a type="button" class="btn btn-success" id="editButton"
								href="/userlists/findById?id=${organization.id}">Update</a>
							<a type="button" class="btn btn-warning" id="deleteButton"
								href="/userlists/delete?id=${organization.id}">Delete</a></td>
							
								  
						</tr>
					</c:forEach>
        </tbody>
        
       </table>
	</div>
</div>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document" style="width:100%">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel"> New Role Registration</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/rolelists/addNew" method="post">
        <table width="50%">
			<tr>
				<td width="25%">
				
				
				
            
             <div class="form-group row">
            <label for="recipient-name" class="col-sm-4 col-form-label">Role Id:</label>
               <div class="col-sm-6">
                   <input type="text" class="form-control" id="recipient-name" name="id"  >
              </div>
            </div>
           
    
         <div class="form-group row">
            <label for="recipient-name" class="col-sm-4 col-form-label">Role Name:</label>
            <div class="col-sm-6">
            <input type="text" class="form-control" id="recipient-name" name="name"  >
            </div>
          </div>
                   
        
        
      
      <div class="modal-footer">
         <div class="form-group row" class="col-sm-4 col-form-label">
          <button type="submit" class="btn btn-primary">Save</button>  
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>      
        </div>  
      </div>
      </td>
      </tr>
      </table>
      </form>
    </div>
  </div>
</div>
</div>

<div class="modal fade" id="editModal" tabindex="-1"  role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Role</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/userlists/update" method="put"> 
            
          <div class="form-group">
            <label for="recipient-id" class="col-form-label">Role Id:</label>
            <input type="text" class="form-control" id="idEdit" name="id" >
          </div>
        
                    
          <div class="form-group">
            <label for="recipient-email" class="col-form-label">Role name:</label>
            <input type="text" class="form-control" id="userEdit" name="name">
          </div>
        
          
          
        
          <div class="form-group">
          <button type="submit" class="btn btn-primary">Submit</button>        
        </div>             
       
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
         </form>
                 
      </div>
    </div>
  </div>
</div>
<div class="modal" id="deleteModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Confirm Delete</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Are you sure you want to delete this record?</p>
      </div>
      <div class="modal-footer">
        <a class="btn btn-primary" id="confirmDeleteButton" href="">Yes, Delete</a>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>

<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>
<script type ="text/javascript"  src="js/user.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>
<script>
$(document).ready( function() {
	  $('#datatable').dataTable( {
	    "iDisplayLength": 3
	    
	  } );
	} ) 

</script>
</body>
</html>

  