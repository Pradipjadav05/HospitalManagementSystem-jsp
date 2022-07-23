<%@page import="DAO.patientDAO"%>
<jsp:useBean id="obj" class="Pojo.patient"/>
<jsp:setProperty property="*" name="obj" />

<%
    String p_id = (String) session.getAttribute("p_id");
    
  
   
    int res = patientDAO.updatePatient(obj, p_id);
    if (res == 1) {
        out.println("<script>alert('Record Update Successfully.... ')</script>");

    } else {
        out.println("<script>alert('Somethig Went Wrong')</script>");
    }
    //out.println("Record Insert Successfully....");
    getServletContext().getRequestDispatcher("/profile.jsp").include(request, response);

%>

    