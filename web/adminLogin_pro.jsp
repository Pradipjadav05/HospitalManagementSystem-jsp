<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Pojo.patient"%>
<%@page import="DAO.patientDAO"%>

<jsp:useBean id="obj" class="Pojo.patient"/>
<jsp:setProperty property="*" name="obj" />

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    //out.print(email);

    //  out.print(password);
    Boolean res = patientDAO.adminLogin(obj, email, password);
    if (res == true) {
        session.setAttribute("email", email);
        response.sendRedirect("adminPenal.jsp");
        /*
        Class.forName("com.mysql.jdbc.Driver");

        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        Statement stm = con.createStatement();

        String sql = "SELECT * FROM doctor where email = '" + email + "' ";
        ResultSet rs = stm.executeQuery(sql);
        if (rs.next()) {
            String id = rs.getString(1);
            String fname = rs.getString(2);
            String lname = rs.getString(3);
            String mobile = rs.getString(5);
            String department = rs.getString(6);
            String degree = rs.getString(7);
            String city = rs.getString(8);
       
            session.setAttribute("id", id);
            session.setAttribute("fname", fname);
            session.setAttribute("lname", lname);
            session.setAttribute("email", email);
            session.setAttribute("mobile", mobile);
            session.setAttribute("department", department);
            session.setAttribute("degree", degree);
            session.setAttribute("city", city);
        response.sendRedirect("adminPenal.jsp");

         */

    } else {
        out.println("<script>alert('Invalid Username/Password...')</script>");
        getServletContext().getRequestDispatcher("/admin.jsp").include(request, response);
    }

%>