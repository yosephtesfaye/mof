<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>

  <br>
  <br>
  <div  align ="center">
  <h3> Hello ${pageContext.request.userPrincipal.name}, </h3>  
<h4>Welcome to report tracking system! </h4>  
<p>

Dear FDRE minister offices , We Kindly ask for on time Report submission or you risk penalties.
here is the latest schedule for Report Submission


</p>
 
 <div class ="container">
  <table class="table table-striped table-advance  table-bordered "  >
                <thead class="thead-dark">
                  <tr>
                     
                     <th><i class="icon_table"></i> Report Type</th>
                    <th><i class="icon_table"></i> Submission Deadline</th>
                     
                     
                  </tr>
                </thead>
                <tbody>
                  
						<tr>
							<td> Program Budget </td>
							<td>April 30</td>
														
						</tr>
						
						<tr>
							<td> 1st quarter Audit Report </td>
							<td>may  30</td>
														
						</tr>
						<tr>
							<td>2nd  quarter Audit Report</td>
							<td>April 30</td>
														
						</tr>
						<tr>
							<td> 3rd quarter  Audit Report</td>
							<td>April 30</td>
														
						</tr>
						<tr>
							<td>4th  Quarter Audit Report </td>
							<td>April 30</td>
														
						</tr>
						
        </tbody>
        
       </table>
  </div>
  </div>

	

