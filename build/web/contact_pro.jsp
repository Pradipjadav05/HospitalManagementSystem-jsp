<%@page import="Pojo.contact"%>
<%@page import="DAO.contactDAO"%>

<jsp:useBean id="contc" class="Pojo.contact"/>
<jsp:setProperty property="*" name="contc" />

<%
    int res = contactDAO.contact(contc);
    if (res == 1) {
        out.println("<script>alert('Record Insert Successfully.... ')</script>");
        getServletContext().getRequestDispatcher("/feedback.jsp").include(request, response);
    } else {
        out.println("<script>alert('Somethig Went Wrong')</script>");
        getServletContext().getRequestDispatcher("/feedback.jsp").include(request, response);

    }
    //out.println("Record Insert Successfully....");

%>