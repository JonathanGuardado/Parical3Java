<%-- 
    Document   : administrador
    Created on : 05-14-2014, 04:17:22 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    if(session.getAttribute("tipo")!=null)
    {
        if((Integer)session.getAttribute("tipo")!=2)
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
        <title>Administrador</title>
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
  <li id="nuevo" class="active"><a href="#">Nueva Ficha</a></li>
  <li id="modificar"><a href="#">Modificar Ficha</a></li>
  <li id="borrar"><a href="#">Borrar Ficha</a></li>
  <li id="mostrar"><a href="#">Buscar Ficha</a></li>
  <li id="usuario"><a href="#">Nuevo Usuario</a></li>
  <li id="cerrar"><a href="#">Cerrar Session</a></li>
</ul>
<div id="content"> <br><br> <center><h2>Bienvenido <%=session.getAttribute("nombre")%></h2></center></div>
</div></div> 
         <script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>    
        <script>
            $("#nuevo").click(function()
    {
      $("#content").load("nuevo.jsp");
      $("#modificar").removeClass("active");
      $("#borrar").removeClass("active");
      $("#nuevo").addClass("active");
      $("#mostrar").removeClass("active");
      $("#usuario").removeClass("active");
   });
$("#modificar").click(function()
    {
      $("#content").load("modificarForm.jsp");
      $("#nuevo").removeClass("active");
      $("#borrar").removeClass("active");
      $("#modificar").addClass("active");
      $("#mostrar").removeClass("active");
      $("#usuario").removeClass("active");
   });
$("#borrar").click(function()
    {
      $("#content").load("borrar.jsp");
      $("#mostrar").removeClass("active");
      $("#nuevor").removeClass("active");
      $("#modificar").removeClass("active");
      $("#borrar").addClass("active");
      $("#usuario").removeClass("active");
   });
$("#mostrar").click(function()
    {
      $("#content").load("show.jsp");
      $("#nuevo").removeClass("active");
      $("#borrar").removeClass("active");
      $("#modificar").removeClass("active");
      $("#mostrar").addClass("active");
      $("#usuario").removeClass("active");
   });
   $("#usuario").click(function()
    {
      $("#content").load("usuario.jsp");
      $("#nuevo").removeClass("active");
      $("#borrar").removeClass("active");
      $("#modificar").removeClass("active");
      $("#mostrar").removeClass("active");
      $("#usuario").addClass("active");
   });
   $("#cerrar").click(function()
    {
      location.href = "logout.jsp";
   });
        </script>
    </body>
</html>
