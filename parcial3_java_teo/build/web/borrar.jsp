<br>
<form method="post" action="borrado.jsp" id="frmborrar">
<div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs form-group"  style="text-align:right"><label>Carnet</label></div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-9 form-group"  style="text-align:left"><input type="text" name="carnet" class="form-control autocomplete" placeholder="Carnet"/>            
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
        <input type="button" class="btn btn-primary sendBtn" value="Borrar Alumno" name="btnborrar" id="btnborrar"/>            
        </div>
        </div>
    </form>
<div id="borrado"></div>
<script type="text/javascript">
$("#btnborrar").click(function(){
    var $form=$("#frmborrar"), url=$form.attr("action");
    var posting= $.post(url,{
                carnet:$form.find("input[name='carnet']").val()
    });
    posting.done(function(data){
        $("#borrado").html(data);
    });
});
</script>