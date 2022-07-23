<%@page import="DAO.appointmentDAO"%>
<%@page import="Pojo.appointment"%>

<jsp:useBean id="obj" class="Pojo.appointment"/>
<jsp:setProperty property="*" name="obj"/>

<%
    String p_id = (String)session.getAttribute("p_id");
    //out.print(p_id);
    
    int res = appointmentDAO.appointment(obj,p_id);

    if(res == 1)
    {
        out.println("<script>alert('Your Appointment is Done.....')</script>");
        getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
    }
    else
    {
        out.println("<script>alert('Something Went Wrong.....')</script>");
        getServletContext().getRequestDispatcher("/appointment.jsp").include(request, response);
    }

%>