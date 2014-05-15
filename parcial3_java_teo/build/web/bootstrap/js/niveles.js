 function validar(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==13) {validar_usuario();}
}
 function validar_usuario()
{
    var user = $("#user").val();
    var pass = $("#password").val();
    $.ajax
    ({ 
        type: "POST",
        url: "login2.jsp",
        data: 'user='+user +'&'+ 'pass='+pass,
        success: function(data) 
        { 
            //alert(data+"-")
            data=parseInt(data);
            switch(data)
            {
                case 1:
                    location.href = "docente.jsp";                    
                    break;
                    
               case 2:
                    location.href = "administrador.jsp";        
                    break;

               default:
               document.getElementById('mensaje_error_form_login').style.visibility='visible'; 
               break;
                    
                }

        },
        error: function(xml,msg)
        {
            document.getElementById('mensaje_error_form_login').style.visibility='visible';
        }
    });  
    
}