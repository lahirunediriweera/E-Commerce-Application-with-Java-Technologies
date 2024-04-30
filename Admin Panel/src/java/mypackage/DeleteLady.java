
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "DeleteLady", urlPatterns = {"/DeleteLady"})
public class DeleteLady extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int ladiesId = Integer.parseInt(request.getParameter("ladiesId"));
        
        try {
            String url = "jdbc:mysql://localhost:3306/bloomshop";
            String username = "root";
            String password = "";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
            String query = "DELETE FROM ladies WHERE ladiesId=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setInt(1, ladiesId);
            
            int rowsAffected = st.executeUpdate();
            
            st.close();
            con.close();
            
            if (rowsAffected > 0) {
                out.println("<h3>Ladies Item with ID " + ladiesId + " deleted successfully!</h3>");
            } else {
                out.println("<h3>Failed to delete Ladies Item with ID " + ladiesId + "!</h3>");
            }
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    
    }

}
