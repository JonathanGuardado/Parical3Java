<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    if(session.getAttribute("tipo")!=null)
    {
        if((Integer)session.getAttribute("tipo")!=1)
        {
            response.sendRedirect("index.jsp");
        }
    }
    else
    {
        response.sendRedirect("index.jsp");
    }
    
%>
<html>
    <head>
        <title>Docente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    </head>
    <body>
        
        <div id="tarea" class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
		<h1>Ficha Estudiantil</h1>
	</div>
        <div class="row" style="margin-top:5px;">
<div class="col-lg-1 col-md-1 col-sm-1 hidden-xs"></div>
<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
<ul class="nav nav-tabs">
  <li id="buscar" class="active"><a href="#">Buscar</a></li>
  <li id="cerrar"><a href="#">Cerrar Session</a></li>
</ul>
    <div id="content"> <br><br> <center><h2>Bienvenido <%=session.getAttribute("nombre")%></h2></center></div>
</div></div> 
         <script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>    
        <script>
    $("#buscar").click(function()
    {
      $("#content").load("buscar.jsp"); 
   });
   $("#cerrar").click(function()
    {
      location.href = "logout.jsp";
   });
        </script>
    </body>
</html>
