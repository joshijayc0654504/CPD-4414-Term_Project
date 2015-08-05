<%-- 
    Document   : login
    Created on : Jul 31, 2015, 2:59:32 PM
    Author     : Jay
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Click 'n' Shop</title>
<link href="http://fonts.googleapis.com/css?family=Oxygen:400,700,300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
				<li><a href="index.html">Home</a></li>
				<!--<li><a href="product.jsp">Product</a></li>-->
				<li class="current_page_item"><a href="login.jsp">Login</a></li>
                                <li><a href="registration.jsp">Sign Up</a></li>
                                <li><a href="adminlogin.jsp">Admin Login</a></li>
				<li><a href="contact_us.jsp">Contact Us</a></li>
			</ul>
		</div>
	</div>
    
    <div style="padding-left: 650px">	
	 <form name="login" action="login" method="post">
            
            <div class="form-group">
            <div class="row">
                <div class="col-lg-2 col-sm-offset-1">
                    <label for="username">User Name:</label>
                    <label for="username" style="color:red">*</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" value="<%=session.getAttribute("username")%>" class="form-control" id="username" name="username" /></br></br>
                </div> 
                    
            </div> 
            </div>
            <div class="form-group">
            <div class="row">
                <div class="col-lg-2 col-sm-offset-1">
                    <label for="password">Password:</label>
                    <label for="password" style="color:red">*</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="password" class="form-control" name="password" />
                </div> 
                
                    
                   
            </div>
            </div>
            <div class="row form-group">
                <div class="col-lg-4 col-lg-offset-3">
                    <input type="submit" value="Submit" class="btn btn-default col-lg-6"/>
                </div>
            </div>
            <div class="col-lg-4 col-lg-offset-3">
                <a href="forgotusername.jsp">Forgot UserName</a>
                <a href="forgotpassword.jsp">Forgot Password</a>
            </div><br><br>
            
            <div class="error">
                <div class="well" style="color:red">${loginFailedMessage}</div>
            </div>
            
            
        </form>
    </div>
<div id="footer">
	<p>Design by <a href="https://www.facebook.com/jayjoshi.j?ref=tn_tnmn">Jay Joshi</a>.
</div>
<!-- end #footer -->
</body>
</html>

       
    