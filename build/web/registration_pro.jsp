<%@page import="Pojo.patient"%>
<%@page import="DAO.patientDAO"%>

<jsp:useBean id="obj" class="Pojo.patient"/>
<jsp:setProperty property="*" name="obj" />

<%

    int res = patientDAO.registration(obj);
    if (res == 1) {
        out.println("<script>alert('Record Insert Successfully.... ')</script>");

    } else {
        out.println("<script>alert('Somethig Went Wrong')</script>");
    }
    //out.println("Record Insert Successfully....");
    getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
%>