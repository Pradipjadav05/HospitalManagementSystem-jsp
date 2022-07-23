<%@page import="DAO.DoctorDAO"%>
<jsp:useBean id="obj" class="Pojo.Doctor"/>
<jsp:setProperty property="*" name="obj" />

<%
    String id = request.getParameter("Did");
    
  
   
    int res = DoctorDAO.updateDoctor(obj, id);
    if (res == 1) {
        out.println("<script>alert('Record Insert Successfully.... ')</script>");

    } else {
        out.println("<script>alert('Somethig Went Wrong')</script>");
    }
    //out.println("Record Insert Successfully....");
    getServletContext().getRequestDispatcher("/adminDoctorList.jsp").include(request, response);

%>

    