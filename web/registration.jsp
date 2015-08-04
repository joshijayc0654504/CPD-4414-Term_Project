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

	<div style="padding-left: 650px">		
	 <form name="registration" id="registration" action="logincheck" method="post">
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="firstName">First Name</label>
                        <label for="firstName" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="text" name="firstName" value="" id="fName" class="form-control" onblur="validateUserName();" placeholder="Enter your First Name" value="${User.firstname}" />
                    </div> 
                    <div class="col-md-3" id="errorFirstName"></div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="lastName">Last Name</label>
                        <label for="lastName" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="text" name="lastName" class="form-control" placeholder="Enter your Last Name" value="${Users.lastname}"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="userName">User Name</label>
                        <label for="userName" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="text" name="userName" class="form-control" placeholder="Enter your User Name"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="password">Password</label>
                        <label for="password" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="password" name="password" class="form-control" placeholder="Enter your Password"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="cpassword">Confirm Password</label>
                        <label for="cpassword" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="password" name="cpassword" class="form-control" placeholder="Re enter your Password"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="gender">Gender</label>
                        <label for="gender" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        Male <input type="radio" name="gender" value="Male" />
                        Female <input type="radio" name="gender" value="Female" />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="email">Email</label>
                        <label for="email" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="text" name="email" class="form-control" placeholder="Enter your Email Id"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="address">Address</label>
                        <label for="address" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="text" name="address" class="form-control" placeholder="Enter your Address"/>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2">
                        <label for="city">City</label>
                        <label for="city" style="color: red">*</label>
                    </div>
                    <div class="col-lg-4">
                        <input type="text" name="city" class="form-control" placeholder="Enter your City"/>
                    </div>
                </div>
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
	<p>Design by <a href="https://www.facebook.com/jayjoshi.j?ref=tn_tnmn">Jay Joshi</a>.
</div>
<!-- end #footer -->
</body>
</html>

       
 