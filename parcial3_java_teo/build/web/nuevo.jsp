<%@page import="java.sql.*" %>
<br>
<form id="nuevofrm" method="post" action="agregando.jsp">
        <fieldset>
            <h2>Datos Personales</h2>
            <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Carnet</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control dui" name="carnet" placeholder="Carnet" />
        </div>
        </div>
                <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Nombre</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" name="nombre" class="form-control" placeholder="Nombre"/>            
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Apellido</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control" name="apellido" placeholder="Apellido" />
        </div>
        </div>
        
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Genero</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><select class="form-control" name="genero">
                                                                                        <option value="M">Masculino</option>
                                                                                        <option value="F">Femenino</option>
                                                                                      </select>
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Email</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control calendar" name="email" placeholder="Email" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Responsable</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control" name="responsalbe" placeholder="Responsable" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Direccion de residencia</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control" name="direccion" placeholder="Direccion de residencia" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>No. telefono casa</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control" name="telca" placeholder="No. telefono casa" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>No. teléfono trabajo</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control" name="teltra" placeholder="No. teléfono trabajo" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Fecha nacimiento</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="date" class="form-control" name="fecha" placeholder="Fecha nacimiento" />
        </div>
        </div>
            
            
            
            <h2>Datos Generales</h2>
            <div class="row">
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
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Carrera</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><select id="carrera" class="form-control" name="carrera" >
                                                                                   </select>
          
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Nombre Tutor</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control" name="tutor" placeholder="Nombre Tutor" />
        </div>
        </div>        
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Nota PAES</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="text" class="form-control calendar" name="paes" placeholder="Nota PAES" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Horas Sociales</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="number" class="form-control" name="sociales" placeholder="Horas Sociales" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>Pasantias(Horas acumuladas)</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><input type="number" class="form-control" name="pasantia" placeholder="Pasantias(Horas acumuladas)" />
        </div>
        </div>
        <div class="row" style="margin-top: 10px;">
        <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"  style="text-align:right"><label>beca</label></div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"  style="text-align:left"><select id="beca" class="form-control" name="beca" >
                                                                                    <option value="si">SI</option>
                                                                                    <option value="no">NO</option>
                                                                                   </select>
        </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center" style="margin-top: 10px;">
            
            
        <input type="button" class="btn btn-primary  sendBtn" value="Agregar Registro" id="nuevobtn" name="nuevobtn"/>
            
            <br />            
            
        </div>
        </fieldset>
</form>

<script type="text/javascript">  
$("#nuevobtn").click(function(){
    var $form=$("#nuevofrm"), url=$form.attr("action");
    var posting= $.post(url,{
                nombre:$form.find("input[name='nombre']").val(),
                apellido:$form.find("input[name='apellido']").val(),
                carnet:$form.find("input[name='carnet']").val(),
                genero:$form.find("select[name='genero']").val(),
                email:$form.find("input[name='email']").val(),
                responsalbe:$form.find("input[name='responsalbe']").val(),
                 direccion:$form.find("input[name='direccion']").val(),
                  telca:$form.find("input[name='telca']").val(),
                  teltra:$form.find("input[name='telca']").val(),
                  fecha:$form.find("input[name='fecha']").val(),
                  carrera:$form.find("select[name='carrera']").val(),
                tutor:$form.find("input[name='tutor']").val(),
                facultad:$form.find("input[name='facultad']").val(),
                paes:$form.find("input[name='paes']").val(),
                sociales:$form.find("input[name='sociales']").val(),
                 pasantia:$form.find("input[name='pasantia']").val(),
                  beca:$form.find("select[name='beca']").val()
    });
    posting.done(function(data){
        $("#content").html(data);
    });
});
</script>
<script src="bootstrap/js/jquery-2.1.0.js"></script>
<script>
$( "#facultad" )
  .change(function () {
    var selectedValue = $(this).find(":selected").val();
    $.ajax({ //Comunicación jQuery hacia JSP
           type: "POST",
           url: "carrera.jsp",
           data: "id="+selectedValue,
           success: function(msg){
               $("#carrera").html(msg);
           },
           error: function(xml,msg){
               $("#carrera").text(" Error");
           }
        });  
  })
  .change();
</script>