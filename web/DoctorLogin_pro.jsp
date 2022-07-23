<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Pojo.Doctor"%>
<%@page import="DAO.DoctorDAO"%>

<jsp:useBean id="obj" class="Pojo.Doctor"/>
<jsp:setProperty property="*" name="obj" />

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    //out.print(email);
    Boolean res = DoctorDAO.login(obj, email, password);
    if (res == true) {
        Class.forName("com.mysql.jdbc.Driver");

        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        Statement stm = con.createStatement();

        String sql = "SELECT * FROM doctor where email = '" + email + "' ";
        ResultSet rs = stm.executeQuery(sql);
        if (rs.next()) {
            String d_id = rs.getString(1);
            String fname = rs.getString(2);
            String lname = rs.getString(3);
            String mobile = rs.getString(5);
            String department = rs.getString(6);
            String degree = rs.getString(7);
            String city = rs.getString(8);

            session.setAttribute("d_id", d_id);
            session.setAttribute("fname", fname);
            session.setAttribute("lname", lname);
            session.setAttribute("email", email);
            session.setAttribute("mobile", mobile);
            session.setAttribute("department", department);
            session.setAttribute("degree", degree);
            session.setAttribute("city", city);
            response.sendRedirect("doctorPenal.jsp");
        }
    } else {
        out.println("<script>alert('Invalid Username/Password...')</script>");
        getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
    }

%>