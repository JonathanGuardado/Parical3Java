<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int flag=0;
String carnet=request.getParameter("carnet");
        try{
Connection conn = null;
Statement st1=null;
Statement st=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java","root","");
st1=conn.createStatement();
rs=st1.executeQuery("SELECT * FROM `alumno` WHERE `carnet`='"+carnet+"'");
while(rs.next())
{
    
    if (rs.getInt("alumno_id")==0)
    {
     %>
<center><h3>No existe</h3></center><% 
        
    }
    else
    {
        st=conn.createStatement();
        st.executeUpdate("DELETE FROM `alumno` WHERE `carnet`='"+carnet+"'");
        %>
<center><h3>Registro Borrado!</h3></center><%        
    }
}
}
catch(Exception ex)
            {
                out.println(ex);
                %>
    <br>se ha producido error.
    <%                
            }
            %>