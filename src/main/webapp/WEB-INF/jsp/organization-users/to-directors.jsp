<%@ include file="/WEB-INF/jsp/common/headers.jsp"%>
<%@ include file="/WEB-INF/jsp/common/footers.jsp"%>

<br>
<br>

<div class="container d-flex justify-content-center" 
      style="background-image: url('img/mofec2.JPG');">
 
    <div class="d-flex flex-column justify-content-between">
		<div style="background-color: #25383C; opacity: 0.8;"
			class="card mt-3 p-5">
			<div class="logo mb-3">
				<i class="fa fa-send " style="color: white;"></i>
			</div>
			<div>
				<p class="mb-1" style="color: white; font-size: 20px;">
				Upload your Document</p>

			</div>
		</div>
		
   <form action="/uploadFiles" method="post" enctype="multipart/form-data">
       <div class="card two bg-white px-5 py-4 mb-3" style="opacity:0.8;">
         <div class="form-group"><label for="propertydirectorate" class="form-control-placeholder" style="font-size:20px;">Select Report Type</label>
           <select class="form-control" 
            style="width:300px;
            height:40px;
            background-color:#25383C;
            color:white;
            font-size: 16px;" 
             id="ddlpropertyid" name="transactiondocumentid"  required>
			       <option 
			       >--SELECT REPORT--</option>
			       	<c:forEach items="${documents}" var="dir">
				      <option value="${dir.id}">${dir.reportype}
				   </option>
				   </c:forEach>
	      </select>
            
         </div>
            
            <br>
            
            <div class="form-group"><input style="background-color:#25383C;color:white;
          
            " 
            type="file" id="files"  name="files" multiple  required class="form-control" >
            
            
               <select class="form-control"  id = "reportstatus"  name = "reportstatus"  hidden=true>
                  <option value = "Complete">Complete</option>
                  <option value = "pending" selected >Pending</option>
                  <option value = "Incomplete">Incomplete</option>
              </select>
            </div> 
            
            <br>
            
            <input type="submit" class="btn btn-success" >
        </div>
        </form>
    </div>
</div>

<script>
body {
    background-color: #EBEAEF;
}

.container {
    flex-wrap: wrap
}

.card {
    border: none;
    border-radius: 10px;
    background-color: #4270C8;
    width: 350px;
    margin-top: -60px
}

p.mb-1 {
    font-size: 25px;
    color: #9FB7FD
}

.btn-primary {
    border: none;
    background: #5777DE;
    margin-bottom: 60px
}

.btn-primary small {
    color: #9FB7FD
}

.btn-primary span {
    font-size: 13px
}

.card.two {
    border-top-right-radius: 60px;
    border-top-left-radius: 0
}

.form-group {
    position: relative;
    margin-bottom: 2rem
}

.form-control {
    border: none;
    border-radius: 0;
    outline: 0;
    border-bottom: 1.5px solid #E6EBEE
}

.form-control:focus {
    box-shadow: none;
    border-radius: 0;
    border-bottom: 2px solid #8A97A8
}

.form-control-placeholder {
    position: absolute;
    top: 15px;
    left: 10px;
    transition: all 200ms;
    opacity: 0.5;
    font-size: 80%
}

.form-control:focus+.form-control-placeholder,
.form-control:valid+.form-control-placeholder {
    font-size: 80%;
    transform: translate3d(0, -90%, 0);
    opacity: 1;
    top: 10px;
    color: #8B92AC
}

.btn-block {
    border: none;
    border-radius: 8px;
    background-color: #506CCF;
    padding: 10px 0 12px
}

.btn-block:focus {
    box-shadow: none
}

.btn-block span {
    font-size: 15px;
    color: #D0E6FF
}

</script>