
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
@WebServlet(name = "DeleteKid", urlPatterns = {"/DeleteKid"})
public class DeleteKid extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int kidsId = Integer.parseInt(request.getParameter("kidsId"));
        
        try {
            String url = "jdbc:mysql://localhost:3306/bloomshop";
            String username = "root";
            String password = "";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
            String query = "DELETE FROM kids WHERE kidsId=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setInt(1, kidsId);
            
            int rowsAffected = st.executeUpdate();
            
            st.close();
            con.close();
            
            if (rowsAffected > 0) {
                out.println("<h3>Kid Item with ID " + kidsId + " deleted successfully!</h3>");
            } else {
                out.println("<h3>Failed to delete Kid Item with ID " + kidsId + "!</h3>");
            }
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    
    }

}
