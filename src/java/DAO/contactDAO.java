/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.contact;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author hp
 */
public class contactDAO {

    public static int contact(contact contc) throws ClassNotFoundException, SQLException {

        System.out.print(contc.getName());
        System.out.print(contc.getEmail());

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        String sql = "INSERT INTO contact(name,email,subject, message)"
                + "VALUES (?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, contc.getName());
        st.setString(2, contc.getEmail());
        st.setString(3, contc.getSubject());
        st.setString(4, contc.getMessage());
        result = st.executeUpdate();

        if (result != 0) {
            result = 1;

        } else {
            result = 0;
        }
        con.close();
        return result;
    }
}
