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
 * @author wiman
 */
public class User {
    PreparedStatement ps;
    String query;    
    void insertUser(String fname, String lname, String address, int contact, String email, String pwd, String cpwd) {
        query="insert into customer(fname,lname,address,contact,email,pwd,cpwd) values('"+fname+"','"+lname+"','"+address+"',"+contact+",'"+email+"','"+pwd+"','"+cpwd+"') ";         
        connectToDB();
            try {                                   
                ps.executeUpdate(query);
                
                ps.setString(1, fname);
                ps.setString(2, lname);
                ps.setString(3, address);
                ps.setInt(4, contact);
                ps.setString(5, email);
                ps.setString(6, pwd);
                ps.setString(7, cpwd); 
            }catch (SQLException ex) {
                System.out.println(ex.getMessage());           
            } 
    }    
    private void connectToDB() {
        String driver= "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/bloomshop";
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            ps = con.prepareStatement(query);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
    }   
}
