//Enviar de los formularios a Servlets
function IrAServletUsandoPost(direccionACambiar){
    document.formulario.action=direccionACambiar;
    document.formulario.submit();
}
function mensaje(){
   alert("Alerta");
}
//Usuarios
//Eliminar Usuario
$(document).ready(function(){
$(document).on('click', '.delbtn', function(){
var id=$(this).attr('data-id');
var nombre=$('#nombre_usuario'+id).text();

$('#idusuariomodal').val(id);
$('#nombreusuariomodal').val(nombre);

$('.btnmodaldelete').click();

});
});
//Editar Usuario
$(document).ready(function(){
$(document).on('click', '.editbtn', function(){
var id=$(this).attr('data-id');
var nombre=$('#nombre_usuario'+id).text();
var rut=$('#rut_usuario'+id).text();
var email=$('#email_usuario'+id).text();
var contra=$('#contra_usuario'+id).text();
var cargo=$('#cargo_usuario'+id).text();

$('#idedit').val(id);
$('#nombreedit').val(nombre);
$('#rutedit').val(rut);
$('#emailedit').val(email);
$('#contraedit').val(contra);
$('#cargoedit').val(cargo);

IrAServletUsandoPost('index.jsp?vp=editusuarios');

});
});
//Verificar cambios realizados en usuarios
$(document).ready(function(){
	$("#input_nombre_edit").keyup(function(){
            //$('#ValNombreEdit').text('Con Cambios');
            $('#ValNombreEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_rut_edit").keyup(function(){
            //$('#ValRutEdit').text('Con Cambios');
            $('#ValRutEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_email_edit").keyup(function(){
            //$('#ValEmailEdit').text('Con Cambios');
            $('#ValEmailEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_cargo_edit").keyup(function(){
            //$('#ValCargoEdit').text('Con Cambios');
            $('#ValCargoEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_contra_edit").keyup(function(){
            //$('#ValContraEdit').text('Con Cambios');
            $('#ValContraEdit').css({'color':'rgb(218, 174, 0)'});
	});
});
//


//Clientes
//Eliminar Cliente
$(document).ready(function(){
$(document).on('click', '.delbtncliente', function(){
var id=$(this).attr('data-id');
var nombre=$('#nombre_cliente'+id).text();

$('#idclientemodal').val(id);
$('#nombreclientemodal').val(nombre);

$('.btnmodaldelete').click();

});
});
//Editar Cliente
$(document).ready(function(){
$(document).on('click', '.editbtncliente', function(){
    
var id=$(this).attr('data-id');
var nombre=$('#nombre_cliente'+id).text();
var rut=$('#rut_cliente'+id).text();
var contacto=$('#contacto_cliente'+id).text();
var celular=$('#celular_cliente'+id).text();
var email=$('#correo_cliente'+id).text();
var dias=$('#dias_pago_cliente'+id).text();
var estado=$('#estado_cliente'+id).text();

$('#idedit').val(id);
$('#nombreedit').val(nombre);
$('#rutedit').val(rut);
$('#contactoedit').val(contacto);
$('#celularedit').val(celular);
$('#emailedit').val(email);
$('#diasedit').val(dias);
$('#estadoedit').val(estado);

IrAServletUsandoPost('index.jsp?vp=editclientes');

});
});
//


//Tramos
//Eliminar Tramos
$(document).ready(function(){
$(document).on('click', '.delbtntramo', function(){
    
var id=$(this).attr('data-id');
var Origen=$('#origen_tramo'+id).text();
var Destino=$('#destino_tramo'+id).text();
var tramo = Origen+"-"+Destino;

$('#idtramomodal').val(id);
$('#nombretramomodal').val(tramo);

$('.btnmodaldelete').click();

});
});
//Editar Tramos
$(document).ready(function(){
$(document).on('click', '.editbtntramo', function(){
    
var id=$(this).attr('data-id');
var origen=$('#origen_tramo'+id).text();
var destino=$('#destino_tramo'+id).text();
var nomcliente=$('#nombre_cliente'+id).text();
var valor12=$('#valor_12'+id).text();
var valor27=$('#valor_27'+id).text();
var acer12=$('#acercamiento_12'+id).text();
var acer27=$('#acercamiento_27'+id).text();
var tarifa=$('#version_tarifa'+id).text();
var comentario=$('#comentario_tramo'+id).text();
var estadotramo=$('#estado_tramo'+id).text();



$('#idtramoedit').val(id);
$('#origentramoedit').val(origen);
$('#destinotramoedit').val(destino);
$('#clientetramoedit').val(nomcliente);
$('#valor12edit').val(valor12);
$('#valor27edit').val(valor27);
$('#acercamiento12edit').val(acer12);
$('#acercamiento27edit').val(acer27);
$('#tarifaedit').val(tarifa);
$('#comentarioedit').val(comentario);
$('#estadotramoedit').val(estadotramo);

IrAServletUsandoPost('index.jsp?vp=edittramos');


});
});
//Verificar cambios realizados en tramos
function cambiocolor(){
    $('#ValClienteEditicon').addClass("fas fa-eye");
    $('#ValClienteEditicon').css({'color':'#2b935e'});
    $('#ValClienteEdittext').text("Confirmado!");   
}
$(document).ready(function(){
	$("#input_origen_edit").keyup(function(){
            $('#ValOrigenEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_destino_edit").keyup(function(){
            $('#ValDestinoEdit').css({'color':'rgb(218, 174, 0)'});
	});
        
        $("#input_tarifa_edit").keyup(function(){
            //$('#ValCargoEdit').text('Con Cambios');
            $('#ValTarifaEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_valor12_edit").keyup(function(){
            //$('#ValContraEdit').text('Con Cambios');
            $('#ValValor12Edit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_valor27_edit").keyup(function(){
            //$('#ValContraEdit').text('Con Cambios');
            $('#ValValor27Edit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_valor12_edit").keyup(function(){
            //$('#ValContraEdit').text('Con Cambios');
            $('#ValContraEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_valor12_edit").keyup(function(){
            //$('#ValContraEdit').text('Con Cambios');
            $('#ValContraEdit').css({'color':'rgb(218, 174, 0)'});
	});
        $("#input_valor12_edit").keyup(function(){
            //$('#ValContraEdit').text('Con Cambios');
            $('#ValContraEdit').css({'color':'rgb(218, 174, 0)'});
	});
});


//




//Pasar datos al campo concat con el que se hace la busqueda
$(document).ready(function(){
        var concat = "";
    
	$("#input_origen_add").keyup(function(){
            concat= document.getElementById("input_origen_add").value;
            $('#input_concat_add').val(concat);
	});
        $("#input_destino_add").keyup(function(){
            concat2 = concat+document.getElementById("input_destino_add").value;
            $('#input_concat_add').val(concat2);
	});
        
        
        
});


// BUSCADOR EN TABLAS 
 $(document).ready(function(){
 $("#input_concat_add").keyup(function(){
 _this = this;
 $.each($("#btramo tbody tr"), function() {
 if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
 $(this).hide();
 else
 $(this).show();
 });
 });
});
 
 
$(document).ready(function() {
    $('#example').DataTable( {
         "language": {
            "decimal": ",",
            "thousands": "."
        },
        "scrollY":        "200px",
        "scrollCollapse": true,
        "paging":         false,
        "dom": '<"top"i>rt<"bottom"flp><"clear">',
        "dom": '<"toolbar">frtip',
        
        
    } );
    
    $("div.toolbar").html('<button class="mt-1 btn btn-primary">Submit</button>');
    
} );
 
 