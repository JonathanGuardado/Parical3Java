<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        String a="";
        String nombre="";
        int num2=0;
        
        Connection conn = null;
        Statement st=null;
        ResultSet rs=null;    
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn=DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java","root","");
            st=conn.createStatement();
            rs=st.executeQuery("SELECT * FROM `usuario` WHERE `nickname`= '"+user+"' and  `pass`= md5('"+pass+"')");
            while(rs.next())
            {
                a= rs.getString("tipo_user"); 
                nombre= rs.getString("nombre"); 
            }
            num2=Integer.parseInt(a);
            out.print(num2);
            
            session.setAttribute("nombre", nombre);
            session.setAttribute("tipo", num2);
            
}
catch(Exception ex)
            {
                out.println(ex);                          
            }
            %>
            


 


 