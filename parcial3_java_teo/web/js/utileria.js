//alert("juqeu")
jQuery(document).ready(function() {

    jQuery(".sendBtn").click(function() {
        if (InputsEmpty(this) == 0) {
            envioDatos(this);
        }
    });

    //configureAutocomplete();
  //  configureDataTable();
});
function configureDataTable() {
    jQuery("table").find("th").css({"background": "#428BCA", "color": "white"})
    jQuery("table").addClass("display").dataTable({
    }).makeEditable({
        sUpdateURL: "UpdateData.php"	
    });
}
function configureAutocomplete() {
    jQuery(".autocomplete").each(function(i, input) {
        loadAutocomplete(input);
    });
}
function loadAutocomplete(input) {
    var form = jQuery(input).parents("form");
    var dataMetod = jQuery(input).attr("data-method");
    var dataController = jQuery(input).attr("data-controller");
    var url = jQuery(form).attr("action");
    url = dataController + "/" + dataMetod;
    jQuery.ajax({
        url: url,
        type: 'GET',
        success: function(response) {
            var data = jQuery.parseJSON(response);
            jQuery(input).autocomplete({
                source: data
            });
        }
    });
}
function envioDatos(input) {
    form = jQuery(input).parents("form")[0];
    url = jQuery(form).attr("action");
    jQuery("input[type='text'][name='carnet']").removeAttr("disabled");
    data = jQuery(form).serialize();
    jQuery.ajax({
        url: url,
        data: data,
        type: 'POST',
        success: function(resp) {
            jQuery("#content").html(resp);
            if(url=="Buscar"){
            form=jQuery("#content").find("form");
            jQuery("<input type='button' class='btn btn-primary sendBtn' value='Actualizar'>").appendTo(form);
            jQuery("<script src='js/utileria.js'></script>").appendTo("#content");
            }
        },
        error: function(e, estado, descripcion) {
            alert(descripcion);
        }
    })
}
function InputsEmpty(btnSend) {
    countInputEmpty = 0;
    jQuery("input[type='text']").each(function(i, input) {
        if (jQuery(input).val().trim() == "") {
            jQuery(input).css({"border": "1px solid red"});
            div = jQuery(btnSend).parent();
            setTimeout(function() {
                jQuery(input).css({"border": "1px solid #ccc"})
            }, 3000);
            countInputEmpty++;
        }
    });
    if (countInputEmpty > 0) {
        divCount = jQuery("#divError").length;
        if (divCount == 0) {
            jQuery("<div id='divError' style='color:red'>¡Ops Le faltaron algunos campos!</div>").appendTo(div)
        } else {
            jQuery("#divError").html("¡Ops Le faltaron algunos campos!");
        }
        setTimeout(function() {
            jQuery("#divError").html("");
        }, 3000);
    }
    return countInputEmpty;
}
function actualizarEsc(select,selectDest){
    opc=jQuery(select).val();
    jQuery.ajax({
        url:"escuelasPorFacultad",
        type: 'POST',
        data:"facultad="+opc,
        success: function(data, textStatus, jqXHR) {
            jQuery(selectDest).html("");
            jQuery(data).appendTo(selectDest);
            jQuery(selectDest).change();
        }
    })
}
function actualizarCarrera(select,selectDest){
    opc=jQuery(select).val();
    jQuery.ajax({
        url:"carrerasPorEscuela",
        type: 'POST',
        data:"escuela="+opc,
        success: function(data, textStatus, jqXHR) {
            jQuery(selectDest).html("");
            jQuery(data).appendTo(selectDest);
            jQuery(selectDest).change();
        }
    })
}