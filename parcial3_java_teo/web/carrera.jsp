<%@page import="java.sql.*" %>

<%
    String id=request.getParameter("id");
                Connection conn = null;
                Statement st=null;
                ResultSet rs=null;    
                try
                {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn=DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java","root","");
                    st=conn.createStatement();
                    rs=st.executeQuery("SELECT * FROM `carrera` WHERE `id_facultad`="+id);
                    while(rs.next())
                    {%>
                            <option value="<%=rs.getString("id_carrera") %>"><%=rs.getString("nombre_carrera") %></option>
                            <%
                                 }
                                 
                       } catch(Exception ex)
                         {
                             ex.printStackTrace();
                             %>
                 
                 <option value="0">Error</option>
                 <%                
                         }finally{
                                 if(rs!=null) rs.close();
                                 if(st!=null) st.close();
                                 if(conn!=null)conn.close();
                                 }
                         %>
