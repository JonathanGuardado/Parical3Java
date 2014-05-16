<%@page import="java.sql.*" %>
<form id="newUser" method="post" action="">
	<fieldset>
		<legend>Nuevo Usuario</legend>
		<div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Nombre Usuario</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" name="nameUser" class="form-control" placeholder="Nombre Usuario"/>            
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Contrase&ntilde;a</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="password" class="form-control" name="Pass" placeholder="Contrase&ntilde;a" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Confirmar Contrase&ntilde;a</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="password" class="form-control" name="Pass2" placeholder="Confirmar Contrase&ntilde;a" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Facultad</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><select id="facultad" class="form-control" name="facultad" >
                <%
                Connection conn = null;
                Statement st=null;
                ResultSet rs=null;    
                try
                {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn=DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java","root","");
                    st=conn.createStatement();
                    rs=st.executeQuery("SELECT * FROM `facultad`");
                    while(rs.next())
                    {%>
                            <option value="<%=rs.getString("id_facultad") %>"><%=rs.getString("nombre_facultad") %></option>
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
                                                                                                   </select>
        </div>
        </div>
                <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Escuela</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left">
            <select id="escuela" class="form-control" name="escuela" >
            </select>          
        </div>
        </div>
                <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Tipo de Usuario</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left">
            <select id="tipo" class="form-control" name="tipo" >
                <option value="1">Docente</option>
                <option value="2">Administrador</option>
            </select>          
        </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" style="margin-top: 10px;">
            
            
        <input type="button" class="btn btn-primary  sendBtn" value="Nuevo Usuario" id="new" name="newUser"/>
            
            <br />            
            
        </div>
	</fieldset>
</form>


<script type="text/javascript">  
$("#new").click(function(){
    var $form=$("#newUser"), url="agregandoUser.jsp";
    //var pass1=$form.find("input[name='Pass']").val(),pass2=$form.find("input[name='Pass2']").val();
    if($form.find("input[name='Pass']").val() == $form.find("input[name='Pass2']").val())
    {
        var posting= $.post(url,{
                nameUser:$form.find("input[name='nameUser']").val(),
                Pass:$form.find("input[name='Pass']").val(),
                escuela:$form.find("select[name='escuela']").val(),
                tipo:$form.find("select[name='tipo']").val()
        });
        posting.done(function(data){
            $("#content").html(data);
        });
    }
    else{
        alert("Contraseñas no coinciden");
    }
    
});
</script>                             

<script type="text/javascript">
$( "#facultad" ).change(function () {
    var selectedValue = $(this).find(":selected").val();
    $.ajax({ //Comunicación jQuery hacia JSP
           type: "POST",
           url: "escuela.jsp",
           data: "id="+selectedValue,
           success: function(msg){
               $("#escuela").html(msg);
           },
           error: function(xml,msg){
               $("#escuela").text(" Error");
           }
        });  
  })
  .change();
</script>