<%-- 
    Document   : logout
    Created on : 05-14-2014, 04:39:01 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%session.invalidate(); 
response.sendRedirect("index.jsp");
%>