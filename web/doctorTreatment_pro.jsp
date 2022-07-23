<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.treatmentDAO"%>
<%@page import="Pojo.treatment"%>

<jsp:useBean id="obj" class="Pojo.treatment"/>
<jsp:setProperty property="*" name="obj"/>

<%
    String id = (String) session.getAttribute("d_id");
    //out.print(id);

    Boolean res = treatmentDAO.treatment(obj, id);

    if (res == true) {

        String p_id = request.getParameter("p_id");

        Class.forName("com.mysql.jdbc.Driver");

        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        Statement stm = con.createStatement();

        String sql = "UPDATE appointment SET status='1' WHERE p_id='" + p_id + "' ";
        stm.executeUpdate(sql);
        con.close();
        out.println("<script>alert('Your Appointment is Done.....')</script>");
        getServletContext().getRequestDispatcher("/doctorAppointment.jsp").include(request, response);
    } else {
        out.println("<script>alert('Something Went Wrong.....')</script>");
        getServletContext().getRequestDispatcher("/doctorAppointment.jsp").include(request, response);
    }

%>