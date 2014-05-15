<%-- 
    Document   : buscar
    Created on : 05-15-2014, 01:56:11 AM
    Author     : RivasRoke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/utileria.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <br/>
    <center>
        <form method="post" action="show.jsp" id="frmborrar">
<div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs form-group"  style="text-align:right"><label>Carnet</label></div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-9 form-group"  style="text-align:left"><input type="text" name="carnet" class="form-control autocomplete" placeholder="Carnet"/>            
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
        <input type="button" class="btn btn-primary sendBtn" value="Buscar Alumno" name="btnborrar" id="btnborrar"/>            
        </div>
        </div>
    </form>
    </center>
</body>
</html>
