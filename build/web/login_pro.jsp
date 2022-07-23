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
    //out.print(password);

    Boolean res = patientDAO.login(obj, email, password);
    if (res == true) {
        Class.forName("com.mysql.jdbc.Driver");

        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
        Connection con = DriverManager.getConnection(mysqlURL);
        Statement stm = con.createStatement();

        String sql = "SELECT * FROM patient where email = '" + email + "' ";
        ResultSet rs = stm.executeQuery(sql);
        if (rs.next()) {
            String id = rs.getString(1);
            String name = rs.getString(2);
            String mobile = rs.getString(4);
            session.setAttribute("p_id", id);
            session.setAttribute("name",name);
            session.setAttribute("email", email);
            session.setAttribute("mobile", mobile);
            response.sendRedirect("home.jsp");
        }
        
    } else {
        out.println("<script>alert('Invalid Username/Password...')</script>");
        getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
    }

%>