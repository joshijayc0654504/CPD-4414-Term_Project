<%-- 
    Document   : registration
    Created on : Jul 31, 2015, 3:06:57 PM
    Author     : Jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Registration</title>
<link href="http://fonts.googleapis.com/css?family=Oxygen:400,700,300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript">
           
            function validateUserName(){
                var text=document.getElementById("fName").value;
                if(text==""){
                    document.getElementById("errorFirstName").innerHTML = "Mandatory field";
                    document.getElementById("errorFirstName").style.color="red";
                }else{
                    $("#errorFirstName").html("OK");
                    $("#errorFirstName").css({color: "green"});
                }   
            }
            
            
</script>
<style>
    
    .pad{
        padding-left: 50px
        
    }
</style>
</head>
<body>
<div id="wrapper">
	<div id="logo" class="container">
		<h1><a href="home.jsp">Click 'N' Shop</a></h1>
		<p>Our Product Your Choice</p>
	</div>
	<div id="menu-wrapper">
		<div id="menu" class="container">
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="login.jsp">Login</a></li>
                                <li class="current_page_item"><a href="registration.jsp">Sign Up</a></li>
				<li><a href="contact_us.jsp">Contact Us</a></li>
			</ul>
		</div>
        </div>

	<div style="padding-left: 550px">		
	 <form name="registration" id="registration" action="Regcheck" method="post">
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="firstname">First Name</label>
                        <label for="firstname" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" name="firstname" value="" id="fName" class="form-control" onblur="validateUserName();" placeholder="Enter your First Name" value="${User.firstname}" />
                    </div>
                    
                    <div class="col-md-3" id="errorFirstName"></div>
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="lastname">Last Name</label>
                        <label for="lastname" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" name="lastname" class="form-control" placeholder="Enter your Last Name" value="${Users.lastname}"/>
                    </div>
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="username">User Name</label>
                        <label for="username" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" name="username" class="form-control" placeholder="Enter your User Name"/>
                    </div>
                   
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="password">Password</label>
                        <label for="password" style="color: red">*</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="password" name="password" class="form-control" placeholder="Enter your Password"/>
                    </div>
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="cpassword">Confirm Password</label>
                        <label for="cpassword" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        <input type="password" name="cpassword" class="form-control" placeholder="Re enter your Password"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="gender">Gender</label>
                        <label for="gender" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        Male <input type="radio" name="gender" value="Male" />
                        Female <input type="radio" name="gender" value="Female" />
                    </div>
                    
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="emailid">Email</label>
                        <label for="emailid" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" name="emailid" class="form-control" placeholder="Enter your Email Id"/>
                    </div>
                    
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="address">Address</label>
                        <label for="address" style="color: red">*</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" name="address" class="form-control" placeholder="Enter your Address"/>
                    </div>
                   
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="city">City</label>
                        <label for="city" style="color: red">*</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" name="city" class="form-control" placeholder="Enter your City"/>
                    </div>
                    
                </div><br>
                <div class="row form-group">
                    <div class="col-lg-4 col-lg-offset-2">
                        <input type="submit" value="Submit" class="btn btn-default col-lg-6"/>
                    </div>
                </div>
            </form>
                
            <div class="error">
                <div class="well" style="color:red">${duplicateUserName}</div>
            </div>
        </div>

<div id="footer">
	<p>&COPY;2015 All Rights Reserved.Design by <a href="https://ca.linkedin.com/pub/jay-joshi/24/293/a36">Jay Joshi</a>.
</div>
<!-- end #footer -->
</body>
</html>

       
 