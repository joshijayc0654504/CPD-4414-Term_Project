/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servlets.DBConnection;
import servlets.User;

/**
 *
 * @author Jay
 */
@WebServlet(name = "Regcheck", urlPatterns = {"/Regcheck"})
public class Regcheck extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Regcheck</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Regcheck at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
        }finally {
            out.close();
        }
    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          
            
           
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        
         String firstname =request.getParameter("firstname");
         String lastname =request.getParameter("lastname");
         String password = request.getParameter("password");
         String cpassword = request.getParameter("cpassword");
         String username = request.getParameter("username");
         String emailid = request.getParameter("emailid");
         String gender = request.getParameter("gender");
         String address = request.getParameter("address");
         String city = request.getParameter("city");
         
    
          PrintWriter out=response.getWriter();
        if( username != null && password != null) {
           if(password.equals(cpassword)){
                  User c =  new User (firstname,lastname,username,emailid,gender,address,city,password);
                  DBConnection  conn=new DBConnection();
                  Connection con=conn.getConnection();
             try {
               if(con != null){
                String query="INSERT INTO users (firstname,lastname,username,emailid,gender,address,city,password) VALUES(?,?,?,?,?,?,?,?)";
                PreparedStatement stmt=con.prepareStatement(query);
                stmt.setString(1, c.getFirstName());
                stmt.setString(2, c.getLastName());
                stmt.setString(3, c.getUserName());
                stmt.setString(4, c.getEmailId());
                 stmt.setString(5, c.getGender());
                  stmt.setString(6, c.getAddress());
                   stmt.setString(7, c.getCity());
                stmt.setString(8, c.getPassword());
               
               
                stmt.executeUpdate();
                response.sendRedirect("login.jsp");
                out.println("You have been successfully signed up");
                
                } else {
                out.println("Error in database connection");
                }
             } catch (SQLException e) { 
                 out.println("Something is wrong");
               }
           }
           else {
             out.println("Password do not match");
           }
        }
        else {
        
            out.println("Please enter the values before submit");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
