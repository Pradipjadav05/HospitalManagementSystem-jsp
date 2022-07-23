/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.patient;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hp
 */
public class adminDAO {

    public static boolean login(patient obj, String email, String password) throws ClassNotFoundException, SQLException {
        boolean found = false;
        /*
        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection conn = DriverManager.getConnection(mysqlURL);
        Statement stmt = conn.createStatement();
        String query = "SELECT  * FROM patient "
                + "Where email='" + email + "' AND password='" + password + "'";
        ResultSet rs = stmt.executeQuery(query);
        if (rs.next()) {
            String em = rs.getString(2);
            String pass = rs.getString(9);

            //System.out.print("Email : " + em);
            //System.out.print("Password : " + pass);

            if ((em.equals(email)) && (pass.equals(password))) {
                found = true;
            } else {
                found = false;
            }
        }
        conn.close();
         */
        System.out.print(email);
        String em1 = "pjadav669@rku.ac.in";
        String pass = "123";
        if((em1.equals(email))&&(pass.equals(password)))
        {
           found = true; 
        }
        else
        {
            found = false;
        }
        return found;
    }
}
