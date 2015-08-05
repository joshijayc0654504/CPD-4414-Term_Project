<%-- 
    Document   : product
    Created on : Jul 31, 2015, 2:54:24 PM
    Author     : Jay
--%>

<%@page import="java.util.ListIterator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="servlets.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

   
    int productid = 0;
    String pname=null;
  
    double price=0.00;
    
    Connection conn = null;
    
            Class.forName("com.mysql.jdbc.Driver");
        
            String jdbc = "jdbc:mysql://localhost/clicknshop";
            conn = DriverManager.getConnection(jdbc, "root", "");
        
        
        PreparedStatement st = conn.prepareStatement("SELECT * FROM product");
        //st.setString(1, productid);
        ResultSet rs = st.executeQuery();
    while(rs.next()){
       
        productid = rs.getInt("productid");
        pname = rs.getString("pname");
        price = rs.getDouble("price");
        
    }   
    String userid=null;
    boolean check = false;
    if(session.getAttribute("userid")!=null){
        userid = (String)session.getAttribute("userid");
        check = true;
    }
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Click 'N' Shop</title>
        <link href="http://fonts.googleapis.com/css?family=Oxygen:400,700,300" rel="stylesheet" type="text/css" />
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
            <div id="logo" class="container">
                <h1><a href="home.jsp">Click 'N' Shop</a></h1>
                <p>Our Product Your Choice</p>
                
            </div>
            <form action="cart" name="product">
                <input type="hidden" name="productid" value="<%=productid%>" />
            <div id="menu-wrapper">
                <div id="menu" class="container">
                    <ul>
                        <li><a href="home.jsp">Home</a></li>
                        <li class="current_page_item"><a href="product.jsp">Product</a></li>
                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="contact_us.jsp">Contact Us</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="three-column" class="container">
                <div id="tbox1">
                    <div class="box-style box-style01">
                        <div class="content">
                            <div class="image"><img src="images/4.JPG" width="324" height="200" alt="" /></div>
                            

                        </div>
                    </div></br>
          
         
                    Product Name: <%=pname%>||
                    Price:<%=price%>  |  <input type="button" value="Add To Cart">
                </div>
                
<!--                <div id="tbox2">
                    <div class="box-style box-style02">
                        <div class="content">
                            <div class="image"><img src="images/2.JPG" width="324" height="200" alt="" /></div>

                        </div>
                    </div></br>
                    Price:|  <input type="button" value="Add To Cart">
                </div>
                <div id="tbox3">
                    <div class="box-style box-style03">
                        <div class="content">
                            <div class="image"><img src="images/3.JPG" width="324" height="200" alt="" /></div>

                        </div>
                    </div></br>
                    Price: |  <input type="button" value="Add To Cart">
                </div>-->
                
            </div>
            </form>
            <div id="page" class="container">
                <div id="content">
                    <div class="post">
                        <h2 class="title">Product:</h2>
                        <div class="entry">

                            <p>We manufacture over 4000 size/types of bearings used in several industrial segments and are constantly adding more items to our current wide range to cater to all your rolling element bearing needs. Our engineering is backed by a strong R&D, quality assurance, testing and gauging team and our customers have seen the value of this investment in every single bearing we manufacture.</p>




                            <h3>Our product range includes:</h3>
                            <hr/>
                            <ul>
                                <p>
                                <li>Ball Bearings</li>
                                <li>Cylindrical Roller Bearings</li>
                                <li>Tapered Roller Bearings</li>
                                <li>Spherical Roller Bearings</li>

                                </p>
                            </ul>
                        </div>
                    </div>
                    <div style="clear: both;">&nbsp;</div>
                </div>
                <!-- end #content -->
                <div id="sidebar">
                    <div>
                        <p/>
                        <p/>
                        <p/>
                        <p/>
                        <p/>
                        <p/>		
                        <div id="tbox1">
                            <div class="box-style box-style01">
                                <div class="content">
                                    <div class="image"><img src="images/5.JPG" width="324" height="200" alt=""/>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end #sidebar -->
                <div style="clear: both;">&nbsp;</div>
            </div>
            <!-- end #page --> 

        </div>

        <div id="footer">
            <p>&COPY;2015&nbsp<a href="https://www.facebook.com/jayjoshi.j?ref=tn_tnmn">Jay Joshi</a>.
        </div>
        <!-- end #footer -->
    </body>
</html>
