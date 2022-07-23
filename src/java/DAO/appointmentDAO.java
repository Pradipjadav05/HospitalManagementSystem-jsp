/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.appointment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author hp
 */
public class appointmentDAO {

    public static int appointment(appointment obj, String p_id) throws ClassNotFoundException, SQLException {
        int result = 0;
        String id = obj.getDoctor_id();
        //System.out.print(id);

        Class.forName("com.mysql.jdbc.Driver");
        String mysqliURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqliURL);
        String query = "INSERT INTO appointment(p_id,name,email,mobile,date,time,doctor_id,message,status) VALUES(?,?,?,?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, p_id);
        st.setString(2, obj.getName());
        st.setString(3, obj.getEmail());
        st.setString(4, obj.getMobile());
        st.setString(5, obj.getDate());
        st.setString(6, obj.getTime());
        st.setString(7, obj.getDoctor_id());
        st.setString(8, obj.getMessage());
        st.setInt(9, 0);
        result = st.executeUpdate();
        if (result != 0) {
            result = 1;

        } else {
            result = 0;
        }
        con.close();

        return result = 1;
    }

}
