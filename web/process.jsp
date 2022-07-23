<%@page import="com.oreilly.servlet.MultipartRequest" %>

<%

    MultipartRequest m=new MultipartRequest(request, "E:/new/");

    out.println("Successfully Uploaded..");
    %> 