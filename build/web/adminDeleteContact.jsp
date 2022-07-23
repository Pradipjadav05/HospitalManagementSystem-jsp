<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    int result = 0;
    String sr = request.getParameter("sr");
     Class.forName("com.mysql.jdbc.Driver");
    String myurl = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection conn = DriverManager.getConnection(myurl);

    PreparedStatement ps = conn.prepareStatement("delete from contact where sr=?");
    ps.setString(1, sr);

    result = ps.executeUpdate();
    if (result > 0) {
        out.println("<script>alert('Record Delete Sucessfully.....!!')</script>");
        RequestDispatcher rd = request.getRequestDispatcher("adminContact.jsp");
        rd.include(request, response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("adminContact.jsp");
        rd.include(request, response);
        out.println("<script>alert('Try Again.....!!')</script>");
    }
%>