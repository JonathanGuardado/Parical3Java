<%@page language="java" %>
<%@page import="java.sql.*" %>
<%
        String nombre=request.getParameter("nombre");
        String apellido=request.getParameter("apellido");
        String carnet=request.getParameter("carnet");
        String genero=request.getParameter("genero");
        String email=request.getParameter("email");
        String responsalbe=request.getParameter("responsalbe");
        String telca=request.getParameter("telca");
        String teltra=request.getParameter("teltra");
        String direccion=request.getParameter("direccion");
        String fecha=request.getParameter("fecha");
        String carrera=request.getParameter("carrera");
        String tutor=request.getParameter("tutor");
        String paes=request.getParameter("paes");
        double paes2=Double.parseDouble(paes);
        String sociales=request.getParameter("sociales");
        int sociales2=Integer.parseInt(sociales);
        String pasantia=request.getParameter("pasantia");
        int pasantia2=Integer.parseInt(pasantia);
        String beca=request.getParameter("beca");
        
                   
                try
                {
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn=DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java","root","");
                    Statement st=null;
                    st=conn.createStatement();
                    st.executeUpdate("INSERT INTO `alumno`(`id_carrera`, `carnet`, `nombres`, `apellidos`, `genero`, `email`, `responsable`, `direccion`, `telcasa`, `teltrab`, `fecha_nac`, `tutor`, `notapaes`, `horas`, `pasantias`, `becado`) VALUES ("+carrera+",'"+carnet+"','"+nombre+"','"+apellido+"','"+genero+"','"+email+"','"+responsalbe+"','"+direccion+"','"+telca+"','"+teltra+"','"+fecha+"','"+tutor+"',"+paes2+","+sociales2+","+pasantia2+",'"+beca  +"')");
                        %>
<center><h3>Registro Agregado!</h3></center><%                             
                     }
catch(Exception ex)
            {
                out.println(ex);
                %>
    <br>se ha producido error.
    <%                
            }
            %>

