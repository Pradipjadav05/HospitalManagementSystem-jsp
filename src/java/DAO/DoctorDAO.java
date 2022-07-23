/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.Doctor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hp
 */
public class DoctorDAO {

    public static boolean login(Doctor obj, String email, String password) throws ClassNotFoundException, SQLException {
        boolean found = false;

        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection conn = DriverManager.getConnection(mysqlURL);
        Statement stmt = conn.createStatement();
        String query = "SELECT  * FROM doctor "
                + "Where email='" + email + "' AND password='" + password + "'";
        ResultSet rs = stmt.executeQuery(query);
        if (rs.next()) {
            String em = rs.getString(4);
            String pass = rs.getString(9);

            System.out.print("Email : " + em);
            System.out.print("Password : " + pass);
            if ((em.equals(email)) && (pass.equals(password))) {
                found = true;
            } else {
                found = false;
            }
        }
        conn.close();
        return found;
    }

    public static int AddDoctor(Doctor obj) throws ClassNotFoundException, SQLException {

        System.out.append(obj.getFname());
        System.out.append(obj.getEmail());
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        String sql = "INSERT INTO doctor(fname,lname,email,mobile,department,degree,city,password)"
                + "VALUES (?,?,?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, obj.getFname());
        st.setString(2, obj.getLname());
        st.setString(3, obj.getEmail());
        st.setString(4, obj.getMobile());
        st.setString(5, obj.getDepartment());
        st.setString(6, obj.getDegree());
        st.setString(7, obj.getCity());
        st.setString(8, obj.getPassword());

        result = st.executeUpdate();
        if (result != 0) {
            result = 1;

        } else {
            result = 0;
        }
        con.close();
        return result;
    }

    public static int updateDoctor(Doctor obj, String id) throws ClassNotFoundException, SQLException {
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");

        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        String sql = "UPDATE doctor "
                + "SET fname=?,lname=?,email=?,mobile=?,department=?,degree=?,city=?,password=? "
                + "WHERE d_id='" + id + "' ";
        PreparedStatement st = con.prepareStatement(sql);

        st.setString(1, obj.getFname());
        st.setString(2, obj.getLname());
        st.setString(3, obj.getEmail());
        st.setString(4, obj.getMobile());
        st.setString(5, obj.getDepartment());
        st.setString(6, obj.getDegree());
        st.setString(7, obj.getCity());
        st.setString(8, obj.getPassword());
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
