<%@page import="Pojo.patient"%>
<%@page import="DAO.patientDAO"%>

<jsp:useBean id="obj" class="Pojo.patient"/>
<jsp:setProperty property="*" name="obj"/>

<%
    int res = patientDAO.feedback(obj);

    if(res == 1)
    {
        out.println("<script>alert('Your Feedback is send.....')</script>");
        getServletContext().getRequestDispatcher("/feedback.jsp").include(request, response);
    }
    else
    {
        out.println("<script>alert('Something Went Wrong.....')</script>");
        getServletContext().getRequestDispatcher("/feedback.jsp").include(request, response);
    }

%>