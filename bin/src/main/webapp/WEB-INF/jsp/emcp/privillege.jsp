

<div class="container">

	<div class="panel panel-primary">
		<div class="panel-heading"> Users and their privillage</div>
		
		<br></br>
		<form action="/organizations" method="get">
					<input id="txtSearch" type="text" name="keyword">
					<button type="submit">Search </button>
				</form>
				
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal" >New Privillege</button>
        
		
			<table class="table table-striped table-advance table-hover">
                <thead>
                  <tr>
                    
                    <th><i class="icon_table"></i>User</th>
                    <th><i class="icon_table"></i>Role</th>
                    
                    <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  
        </tbody>
        
       </table>
	</div>
</div>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New Privillege</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/organizations/addNew" method="post">
                       
         <div class="form-group">
            <label for="recipient-name" class="col-form-label">User :</label>
            <select class=""   required>
  <option selected>Select User</option>
  <option value="1">user1</option>
  <option value="2">user2</option>
  <option value="3">user3</option>
  <option value="4">user4</option>
  <option value="5">user5</option>
  <option value="3"></option>
      </select>
          </div>
          
          
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Role :</label>
            <select class=""   required>
  <option selected>Select Role</option>
  <option value="1">ADMIN</option>
  <option value="2">EMCP</option>
  <option value="3">AUDIT</option>
  <option value="4">BUDGET</option>
  <option value="5">USER</option>
  <option value="5">MINISTER</option>
  
  <option value="3"></option>
      </select>
          </div>
          
          
          
                  
        
          <div class="form-group">
          <button type="submit" class="btn btn-primary">Save</button>        
        </div>             
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

  