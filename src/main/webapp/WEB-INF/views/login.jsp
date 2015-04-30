<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>

<link href="resources/css/materialize.css" rel="stylesheet">
<link href="resources/css/materialize.min.css" rel="stylesheet">
<link href="resources/css/login.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="resources/js/materialize.js"></script>
<script src="resources/js/materialize.min.js"></script>
<script src="resources/js/login.js"></script>
</head>
<body>

<div class="row" id="login-box">
		<p id="error-msg">${error}</p>
    <div class="col s12">
      <ul class="tabs">
        <li class="tab col s6"><a class="active" href="#login">Sign In</a></li>
        <li class="tab col s6"><a  href="#register">Sign Up</a></li>
      
      </ul>
    </div>
    
   						 <!--     ***** Login *****     -->
    <div id="login" class="col s12">
	    <div>	
			<div class="row">
				<form class="col s12"  name='loginForm'
						action="<c:url value='/j_spring_security_check' />" method='POST'>
			     <div class="row">
			        <div class="input-field col s12">
			          <input type="text" name="username" path="username" class="validate" id="login-email" required>
			        	 <label for="email">Username or email </label>
			        		        </div>
			      </div>
			      <div class="row">
			        <div class="input-field col s12">
			          <input type="password" name="password" path="password" class="validate" id="login-password" required>
			          <label for="password">Password</label>
			        </div>
			      </div>
			      
			 <button class="btn waves-effect waves-light" id="login-submit" type="submit" name="action" value="submit" name="submit">Login
			   
			  </button>
			        
			    </form>
			</div>
		</div>
    
    </div>
    
                       <!--  ***** Register ******  -->
    
  <div id="register" class="col s12">
     <div>	
			<div class="row">
			
			  <!-- <form class="col s12"  action="register" method="post" commandName="registerForm" >-->
			  	<form class="col s12" id="registerForm" action="register" method="post" commandName="registerForm" >
				    <p id="error-msg" name="errorMsg"></p>
				     <div class="row">
				        <div class="input-field col s6">
				          <input  id="first-name" type="text" class="validate alphabets-only"  name="fName"  required/>
				          <label for="first-name">First Name</label>
				        </div>
				        <div class="input-field col s6">
				          <input id="last-name" type="text" class="validate alphabets-only"  name="lName" required/>
				          <label for="last-name">Last Name</label>
				        </div>
	                </div>
				    <div class="row">
				        <div class="input-field col s12">
				          <input id="register-email" type="email" name="email" class="validate" required/>
				       <label for="register-email">Email</label>
				       </div>
				      </div>
					<div class="row">
				        <div class="input-field col s6">
				          <input id= "register-password" type="password" name="passwd" class="validate" required/>
				          <label for="password">Enter Password </label>
				        </div>
				       <div class="input-field col s6">
				          <input type="password" name="confirm-password" id="confirm-password" class="validate" required/>
				          <label for="confirm-password" id="confirm-password-label" style="font-size:12px">Confirm Password</label>
				        </div>
				      </div>
				      
					 <button class="btn waves-effect waves-light" type="submit"  name="submit"  value="submit" id="register-submit">Register
					   
					  </button>
					        
			    </form>
			   
			</div>
		</div>
     </div>
     
     
   
  </div>
        


</body>
</html>