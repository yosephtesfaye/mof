<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Log in</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
.login-form {
    width: 500px;
    margin: 30px auto;
    
}
.login-form form {        
    margin-bottom: 15px;
    background: #f39c12;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.9);
    padding: 30px;
    
    background:linear-gradient(DarkSlateGray,Cyan);
	background:-webkit-linear-gradient(DarkSlateGray,Cyan);
	background:-moz-linear-gradient(DarkSlateGray,Cyan);
	border:3px outset #F4E10A;
	-webkit-border-radius:100%;
	-moz-border-radius:100%;
	-ms-border-radius:100%;
	-o-border-radius:100%;
	color:white;
	-webkit-box-shadow:-10px 10px 20px rgba(255,255,255,0.9);
	box-shadow:-10px 10px 20px rgba(255,255,255,0.9);
    
    
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-control, .login-btn {
    border-radius: 2px;
}
.input-group-prepend .fa {
    font-size: 18px;
}
.login-btn {
    font-size: 15px;
    font-weight: bold;
  	min-height: 40px;
  	width:120px;
}

   
</style>
</head>
<body style="background-color:teal" >
<div class="login-form" style="margin-top:100px;">
    <form action="/login" method="POST" >
        <h4 class="text-center">EMCP System</h4>   
        <div class="form-group ${error != null ? 'has-error' : ''}" >
        <span  style="color:white;" >${error}</span>
        	<div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <span class="fa fa-user"></span>
                    </span>                    
                </div>
                <span>${message}</span>
                <input type="text" class="form-control" name="username" placeholder="Username" required="required">	
                   		
            </div>
        </div>
		<div class="form-group ${error != null ? 'has-error' : ''}">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                    </span>                    
                </div>
                <input type="password" class="form-control" name="password" placeholder="Password " >	
              			
            </div>
            
         
        </div> 
              
        <div class="form-group">
           <label class="float-left form-check-label"><input type="checkbox"> Remember me</label>
            <button type="submit" class="btn btn-primary login-btn " ><i class="fas fa-sign-in-alt"></i>Login</button>
           
        </div>
        
    </form>
    
</div>
</body>
</html>