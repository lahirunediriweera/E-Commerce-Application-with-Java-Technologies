/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wiman
 */
@WebServlet(name = "SignUpServlet", urlPatterns = {"/SignUpServlet"})
public class SignUpServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
 
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String address = request.getParameter("address");
        String contactno = request.getParameter("contact");
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String cpwd = request.getParameter("cpwd");
        int contact;

        PrintWriter out = response.getWriter();
        
        // Validate fname
        if(fname== null || fname.length()== 0 || fname.equals(" ")){
            out.println("<h4 style='color:red'>First Name is required.</h4>");
            return;
        }
        else if(fname.length()>15){
            out.println("<h4 style='color:red'>First Name must have maximum 15 characters.</h4>");
            return;
        }
        
        //validate lname
        if(lname== null || lname.length()== 0 || lname.equals(" ")){
            out.println("<h4 style='color:red'> Last Name is required.</h4>");
            return;
        }
        else if(lname.length()>25){
            out.println("<h4 style='color:red'>"+"Last Name must have maximum 25 characters."+"</h4>");
            return;
        }
        
        //validate address
        if(address== null || address.length()== 0 || address.equals(" ")){
            out.println("<h4 style='color:red'> Address is required.</h4>");
            return;
        }
        else if(address.length()>125){
            out.println("<h4 style='color:red'> Address must have maximum 125 characters.</h4>");
            return;
        }
        
        //Validate ContactNo
        if(contactno== null || contactno.length()== 0 || contactno.equals(" ")){
            out.println("<h4 style='color:red'> Contact Number is required.</h4>");
            return;
        }
        else if(contactno.length()> 10){
            out.println("<h4 style='color:red'>Contact Number must be 10 digits.</h4>");
            return; 
        }      
        else if (contactno.length()< 10) {
                   out.println("<h4 style='color:red'>Contact Number must be 10 digits.</h4>");
                    return; 
        }
        else{
            try {  
                contact = Integer.parseInt(contactno);
            } 
            catch(NumberFormatException nfe) {
                out.println("<h4 style='color:red'>Contact Number must be numeric.</h4>");
                return; 
            }
        }
        
        //Validate Email
        if(email== null || email.length()== 0 || email.equals(" ")){
            out.println("<h4 style='color:red'> Email is required.</h4>");
            return;
        }
        else 
            try{
                if(email.length()>75){
                    out.println("<h4 style='color:red'> Email Address must have maximum 75 characters.</h4>");
                    return;
                }
            }
            catch(Exception ex){
                if(!email.equals("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$")){
                    out.println("<h4 style='color:red'> Invalid Email Address.");
                    return;
                }
            }
        
        //Validate Password
        if(pwd== null || pwd.length()== 0 || pwd.equals(" ")){
            out.println("<h4 style='color:red'> Password is required.</h4>");
            return;
        }
        else if(pwd.length()<8){
            out.println("<h4 style='color:red'> Password must have minimum 8 characters.</h4>");
            return;
        }
        else if(pwd.length()>15){
            out.println("<h4 style='color:red'> Password must have maximum 15 characters.</h4>");
            return;
        }
        
        //Validate Comfirm Password
        if(cpwd== null || cpwd.length()== 0 || cpwd.equals(" ")){
            out.println("<h4 style='color:red'> Enter the password again</h4>");
            return;
        }
        else if(!pwd.equals(cpwd)){
            out.println("<h4 style='color:red'> Confirm password is does not match</h4>");
            return;           
        }
  
        out.println("<h2 style='color:green'>successfully registered.");
        User us = new User();
        us.insertUser(fname,lname,address,contact,email,pwd,cpwd);
        out.close();
        //processRequest(request, response);
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
