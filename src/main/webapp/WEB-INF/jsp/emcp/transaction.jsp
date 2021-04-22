<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>


<div class="container">

	<div class="panel panel-primary">
		<div class="panel-heading"> Reports from Organizations</div>
		
		<br></br>
		<form action="/organizations" method="get">
					<input id="txtSearch" type="text" name="keyword">
					<button type="submit">Search </button>
				</form>
			<p align ="center">	
			<a href="exporttoexcel">ExportToExcel</a>&nbsp;|<a href="exporttoexcel">&nbsp;ExportToWord</a>&nbsp;|<a href="exporttoexcel">&nbsp;ExportToPdf</a>      
		</p>
			<table class="table table-striped table-advance table-hover">
                <thead>
                  <tr>
                    
                    
                    <th><i class="icon_table"></i>Date </th>
                    <th><i class="icon_table"></i>Directorate</th>
                    <th><i class="icon_table"></i>Report Type</th>
                    <th><i class="icon_table"></i>Actual Report</th>
                    <th><i class="icon_table"></i>Status </th>
                    <th><i class="icon_table"></i>version</th>
                    <th><i class="icon_table"></i>username</th>
                    
                    
                    <th><i class="icon_cogs"></i>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  
        </tbody>
        
       </table>
       				
       
	</div>
	<button type="button"  >Print</button>
</div>

<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New Organization</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/organizations/addNew" method="post">
                       
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Organization:</label>
            <input type="text" class="form-control" id="recipient-name" name="orgname"  required>
          </div>
        
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Email:</label>
            <input type="email" class="form-control" id="recipient-name" name="email"    required>
          </div>
        
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Telephone:</label>
            <input type="text" class="form-control" id="recipient-name" name="telephone">
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

  