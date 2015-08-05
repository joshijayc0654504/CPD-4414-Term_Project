<%-- 
    Document   : addproduct
    Created on : Aug 4, 2015, 10:35:50 PM
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
			
		</div>
	</div>
    
    <div style="padding-left: 650px">	
       
	 <form name="addproductform" action="Addproduct" method="POST">
              
        
            <table>
              
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="pname" required/></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" required/></td>
                </tr>
                
                <tr>
                    <td>Product Image</td>
                    <td><input type="file" Sname="photo" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="uploadImage" value="Upload"/>
                    </td>
                </tr>
            </table>
        </form>
            
            
        </form>
    </div>
<div id="footer">
	<p>&COPY;2015 All Rights Reserved.Design by <a href="https://ca.linkedin.com/pub/jay-joshi/24/293/a36">Jay Joshi</a>.
</div>
<!-- end #footer -->
</body>
</html>