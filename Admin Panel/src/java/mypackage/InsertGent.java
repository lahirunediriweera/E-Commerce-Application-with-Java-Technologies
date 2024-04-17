/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author USER
 */
public class InsertGent {
    
    static List<InsertGent> getAllGents() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    Statement st;
    void insertGent(int id, String name, String description, String price, int amount, String picture) {
            connectToDB();
            String query ="INSERT INTO gentss VALUES("+id+",'"+name+"','"+description+"','"+price+"','"+amount+"','"+picture+"')";    
            try {
                st.executeUpdate(query);
                System.out.println("Record inserted");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());           
            }        
        
    }

    private void connectToDB() {
        String driver= "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/testshop";
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(InsertGent.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    String getId() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    String getName() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    String getDescription() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }  

    
}
