<%@page language="java" %>
<%@page import="java.sql.*" %>
<%
        String nameUser=request.getParameter("nameUser");
        String pass=request.getParameter("Pass");
        String escuela=request.getParameter("escuela");
        String tipo=request.getParameter("tipo");
        
        
                   
                try
                {
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn=DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java","root","");
                    Statement st=null;
                    st=conn.createStatement();
                    st.executeUpdate("INSERT INTO usuario (nombre,nickname,pass,tipo_user,id_escuela) values('"+nameUser+"','"+nameUser+"',md5('"+pass+"'),"+tipo+","+escuela+")");
                        %>
<center><h3>Usuario Agregado!</h3></center><%                             
                     }
catch(Exception ex)
            {
                out.println(ex);
                %>
    <br>se ha producido error.
    <%                
            }
            %>

