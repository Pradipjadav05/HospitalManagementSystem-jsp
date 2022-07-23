/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.treatment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author hp
 */
public class treatmentDAO {

    public static Boolean treatment(treatment obj, String d_id) throws ClassNotFoundException, SQLException {
        boolean found = false;
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        String sql = "INSERT INTO treatment(p_id,p_name,d_id,doctor,treatment,medicine)"
                + "VALUES (?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, obj.getP_id());
        st.setString(2, obj.getP_name());
        st.setString(3, d_id);
        st.setString(4, obj.getDoctor());
        st.setString(5, obj.getTreatment());
        st.setString(6, obj.getMedicine());
        result = st.executeUpdate();

        if (result > 0) {
           found = true;
        } else {
            found = false;
        }
        return found;
    }

}
