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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Methma
 */
class Login {
    Statement st;

    private void connectToDB() {
        String driver= "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/userDB";
        try {
            Class.forName(driver);
            Connection con=DriverManager.getConnection(url,"root","");
            st = con.createStatement();
            } 
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }    
}
