<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accountable User</title>

<!-- the following is for font-awesome -->
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- css start for drop down menu -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" >
 <!-- css end for drop down menu -->
 <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet">
  
    
</head>
<body>

<nav class="navbar  navbar-expand-lg navbar-dark bg-dark sticky-top" style="height: 100px; ">

<div Class="container">
<div Class="col-md-6">

  <a class="navbar-brand" href="#">Report Penalty Tracking System </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  </div>
  </div>
  <div Class="container">
  <div Class="col-md-4">
  <div Class="collapse navbar-collapse" id="collapse_target">
  <ul class="navbar-nav " >
  
      <li class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target">
        Directorates
        </a>
        <div Class="dropdown-menu" aria-labelledby="dropdown_target">
        <a Class="dropdown-item" href="${pageContext.request.contextPath }/views/directorates-account.jsp">Account Directorate</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="${pageContext.request.contextPath }/views/directorates-budget.jsp">Budget Directorates</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="${pageContext.request.contextPath }/views/directorates-audit.jsp">Audit Directorates</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="${pageContext.request.contextPath }/views/directorates-inspection.jsp">Inspection Directorates</a>
        <div Class="dropdown-divider" ></div>
        <a Class="dropdown-item" href="#">Other Directorates</a>
        
        </div>
      </li>
      <li class="nav-item  ">
        <a class="nav-link" href="#">Training</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="#">History</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="#">Notification</a>
      </li>
      </ul>
      </div>
  </div>
 
  </div>
  <div Class="container">
  <div Class="col-md-2">
  <div class="dropdown create">
					
						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							<i class="fa fa-cogs"></i>Setting 
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#changepassword">Change Password</a></li>
							<li><a href="#">View status</a></li>
							<li> <a href="#">Profile</a></li> 
							<li><a href="${pageContext.request.contextPath}/logout.jsp">Signout</a></li>
				
						</ul>
					
					</div>
  </div>
  </div>

</nav>




<!-- /*the following j-query is for active button menu when Clickable */ -->
<script
  src="https://code.jquery.com/jquery-3.5.1.js">
  </script>
  <script type="text/javascript">
  $(document).on('click','ul li',function(){
	  $(this).addClass('active') .siblings().removeClass('active')
  })
  </script>
<!-- the above jquery and javascript is for adding and removing clickable button -->

<!-- start for drop down menu  -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<!-- end for drop down menu -->




	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/js/bootstrap.min.js"></script>
</body>
</html>