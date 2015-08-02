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
	 <form action="reg.jsp" method="post">
            
            First name :<input type="text" name="fname" /><br></br>
            Last name :<input type="text" name="lname" /><br></br>
            Email :<input type="text" name="email" /></br></br>
            User name :<input type="text" name="userid" /><br></br>
            Password :<input type="password" name="pwd" /><br></br>
            <input type="submit" value="Sign Up"/>

        </form>
        </div>

<div id="footer">
	<p>Design by <a href="https://www.facebook.com/jayjoshi.j?ref=tn_tnmn">Jay Joshi</a>.
</div>
<!-- end #footer -->
</body>
</html>

       
 