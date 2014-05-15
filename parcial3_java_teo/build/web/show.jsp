<%-- 
    Document   : show
    Created on : 05-15-2014, 01:49:23 AM
    Author     : RivasRoke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        
        <table>
            <h1>Datos de Estudiante</h1>
            <%
            String carnet = request.getParameter("carnet");
            Connection conn = null;
            Statement st = null;
            ResultSet rs = null;
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java", "root", "");
            
            st = conn.createStatement();
            rs = st.executeQuery("select * from alumno where alumno.carnet='"+ carnet +"'");
            while(rs.next())
            {
            %>
            <tr>
                <th>Carnet: </th>
                <td><%=  rs.getString("carnet") %></td>

                <th>Direccion: </th>
                <td><%= rs.getString("direccion") %></td>
            </tr>
            
            <tr>
                <th>Nombres: </th>
                <td><%= rs.getString("nombres") %></td>
                
                <th>Telefono Casa: </th>
                <td><%= rs.getString("telcasa") %></td>
            </tr>
            
            <tr>
                <th>Apellidos: </th>
                <td><%= rs.getString("apellidos") %></td>
                
                <th>Telefono Trabajo: </th>
                <td><%= rs.getString("teltrab") %></td>
            </tr>
            
            
            <tr>
                <th>Genero: </th>
                <td><%= rs.getString("genero") %></td>
                
                <th>Tutor: </th>
                <td><%= rs.getString("tutor") %></td>
            </tr>
            <tr>
                <th>Email: </th>
                <td><%= rs.getString("email") %></td>
            </tr>
            </table>
            <table>   
            <h2>Datos Academicos</h2>
            <tr>
                <th>Nota PAES: </th>
                <td><%= rs.getString("notapaes") %></td>
                
                <th>Becado: </th>
                <td><%= rs.getString("becado") %></td>
            </tr>
            
            <tr>
                <th>Horas Sociales: </th>
                <td><%= rs.getString("horas") %></td>
                
                <th>Pasantias: </th>
                <td><%= rs.getString("pasantias") %></td>
            </tr>
            </table>
            
            <table>
            <h2>Otros Datos</h2>
             <tr>
                <th>Fecha de Nacimiento: </th>
                <td><%= rs.getString("fecha_nac") %></td>
                
                <th>Responsable: </th>
                <td><%= rs.getString("responsable") %></td>
            </tr>
            <%
            }
            %>
            </table>
            <%
        }catch(Exception ex)
        {
            ex.printStackTrace();
        }
        finally
            {
                if(rs != null) rs.close();
                if(st != null) st.close();
                if(conn != null) conn.close();
        }
    %>
    
        </body>
</html>
