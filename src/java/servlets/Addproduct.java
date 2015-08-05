/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Jay
 */
@WebServlet(name = "Addproduct", urlPatterns = {"/Addproduct"})
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class Addproduct extends HttpServlet {
    

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
        try{
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Addproduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Addproduct at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * adding products to database in product table by admin
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        String pname = request.getParameter("pname");
        String pr =request.getParameter("price");
        double price = Double.parseDouble(pr);
        /*String photo = request.getParameter("photo");
        HttpSession session = request.getSession();
        InputStream inputStream = null; // input stream of the upload file
        
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }*/
         
        
        
       Product products = new Product(pname, price);
       DBConnection  conn=new DBConnection();
       Connection con=conn.getConnection();
             try {
               if(con != null){
                //String query="INSERT INTO product (pname,price,photo) VALUES(?,?,?)";
                String query="INSERT INTO product (pname,price) VALUES(?,?)";
                PreparedStatement stmt=con.prepareStatement(query);
                stmt.setString(1, products.getPname());
                stmt.setDouble(2, products.getPrice());
               
               /* if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                stmt.setBlob(3, inputStream);
                }*/
 
            // sends the statement to the database server
               
               //int row = stmt.executeUpdate();
              /* if (row > 0) {
                response.sendRedirect("product.jsp");
                out.println("You have been successfully added");
                }*/
                stmt.executeUpdate();
                response.sendRedirect("product.jsp");
                out.println("You have been successfully added!!");
                
                } else {
                out.println("Error while connecting to database!!");
                }
             } catch (SQLException e) { 
                 out.println("Wrong with something!!");
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
