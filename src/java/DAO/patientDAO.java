/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.patient;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hp
 */
public class patientDAO {

    /**
     *
     * @param obj
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static boolean adminLogin(patient obj, String email, String password) {
        boolean found = false;

        //System.out.print(email);
        String em1 = "pjadav669@rku.ac.in";
        String pass1 = "123";
        String em2 = "kbhut865@rku.ac.in";
        String pass2 = "456";
        String em3 = "ddhandhukiya385@rku.ac.in";
        String pass3 = "789";
        if (((em1.equals(email)) && (pass1.equals(password))) || (em2.equals(email) && pass2.equals(password)) || (em3.equals(email) && pass3.equals(password))) {
            found = true;
        } else {
            found = false;
        }

        return found;

    }

    public static int registration(patient obj) throws ClassNotFoundException, SQLException {

        System.out.append(obj.getName());
        System.out.append(obj.getEmail());
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        String sql = "INSERT INTO patient(name,email,mobile, password)"
                + "VALUES (?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, obj.getName());
        st.setString(2, obj.getEmail());
        st.setString(3, obj.getMobile());
        st.setString(4, obj.getPassword());
        result = st.executeUpdate();
        if (result != 0) {
            result = 1;

        } else {
            result = 0;
        }
        con.close();
        return result;
    }

    public static boolean login(patient obj, String email, String password) throws ClassNotFoundException, SQLException {
        boolean found = false;
        //System.out.print(email);
        //System.out.print(password);
        //System.out.print("-----------");
        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection conn = DriverManager.getConnection(mysqlURL);
        Statement stmt = conn.createStatement();
        String query = "SELECT  * FROM patient "
                + "Where email='" + email + "' AND password='" + password + "'";
        ResultSet rs = stmt.executeQuery(query);
        if (rs.next()) {
            String em = rs.getString(3);
            String pass = rs.getString(10);

            //System.out.print("Email : " + em);
            //System.out.print("Password : " + pass);
            if ((em.equals(email)) && (pass.equals(password))) {
                found = true;
            } else {
                found = false;
            }
        }
        conn.close();
        return found;
    }

    public static int feedback(patient obj) throws ClassNotFoundException, SQLException {
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        String mysqliURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqliURL);
        String query = "INSERT INTO feedback(name,email,complain,serviceRate,cleannessRate,suggestion) VALUES(?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, obj.getName());
        st.setString(2, obj.getEmail());
        st.setString(3, obj.getComplain());
        st.setString(4, obj.getServiceRate());
        st.setString(5, obj.getCleannessRate());
        st.setString(6, obj.getSuggestion());
        result = st.executeUpdate();
        if (result != 0) {
            result = 1;
        } else {
            result = 0;
        }

        return result;

    }

    public static int updatePatient(patient obj, String p_id) throws ClassNotFoundException, SQLException {
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");

        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        String sql = "UPDATE patient "
                + "SET name=?,email=?,mobile=?,gender=?,city=?,distric=?,zipcode=?,address=? "
                + "WHERE p_id='" + p_id + "' ";
        PreparedStatement st = con.prepareStatement(sql);

        st.setString(1, obj.getName());
        st.setString(2, obj.getEmail());
        st.setString(3, obj.getMobile());
        st.setString(4, obj.getGender());
        st.setString(5, obj.getCity());
        st.setString(6, obj.getDistrict());
        st.setString(7, obj.getZipcode());
        st.setString(8, obj.getAddress());
        
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
