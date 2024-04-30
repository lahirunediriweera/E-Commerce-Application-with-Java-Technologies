/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */
class Ladies {
    
    static List<Ladies> getAllLadies() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    Statement st;
    void insertLadies(String name, String description, int price, int quantity, String image) {
            connectToDB();
            String query ="INSERT INTO ladies (name,description,price,quantity,image) VALUES('"+name+"','"+description+"','"+price+"','"+quantity+"','"+image+"')";    
            try {
                st.executeUpdate(query);
                System.out.println("Record inserted");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());           
            }        
        
    }
    
    private void connectToDB() {
        String driver= "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/bloomshop";
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Ladies.class.getName()).log(Level.SEVERE, "Error inserting data", ex);
        }
    }

    void inserLadies(int id, String name, String description, String price, String amount, String picture) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
