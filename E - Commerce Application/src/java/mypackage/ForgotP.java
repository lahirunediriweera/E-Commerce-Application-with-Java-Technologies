/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Methma
 */
class ForgotP {
    PreparedStatement ps; 
    String query;
    void insertDetails(String email,String Npwd,String Cpwd)
         
    {
        query = "INSERT INTO user VALUES("+email+",'"+Npwd+"','"+Cpwd+"')";
        
        connectToDB();
        try{
           ps.executeUpdate(query);
           
           ps.setString(1, email);
           ps.setString(2, Npwd);
           ps.setString(3, Cpwd);
        }
        catch(SQLException ex)
        {
           System.out.println(ex.getMessage());
        }
        
        
        
    }

    private void connectToDB() {
        String driver= "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/userDB";
        try {
            Class.forName(driver);
            Connection con=DriverManager.getConnection(url,"root","");
            java.sql.Statement st = con.createStatement();
            } 
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ForgotP.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}
