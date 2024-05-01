/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;


import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Methma
 */
@WebServlet(name = "ForgotPServlet", urlPatterns = {"/ForgotPServlet"})
public class ForgotPServlet extends HttpServlet {

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
            out.println("<title>Servlet ForgotPServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPServlet at " + request.getContextPath() + "</h1>");
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
        
        String email=request.getParameter("email");
        String Npwd=request.getParameter("NPassword");
        String Cpwd=request.getParameter("CPassword");
        
        
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
        
        if(Npwd== null || Npwd.length()== 0 || Npwd.equals(" ")){
            out.println("<h4 style='color:red'> Password is required.</h4>");
            return;
        }
        else if(Npwd.length()<8){
            out.println("<h4 style='color:red'> Password must have minimum 8 characters.</h4>");
            return;
        }
        else if(Npwd.length()>15){
            out.println("<h4 style='color:red'> Password must have maximum 15 characters.</h4>");
            return;
        }
        
        //Validate Comfirm Password
        if(Cpwd== null || Cpwd.length()== 0 || Cpwd.equals(" ")){
            out.println("<h4 style='color:red'> Enter the password again</h4>");
            return;
        }
        else if(!Cpwd.equals(Cpwd)){
            out.println("<h4 style='color:red'> Confirm password is does not match</h4>");
            return;           
        } 
        
    
       ForgotP fp= new ForgotP();
       fp.insertDetails(email,Npwd,Cpwd);
       // processRequest(request, response);
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
