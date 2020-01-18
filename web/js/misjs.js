//Enviar de los formularios a Servlets
function IrAServletUsandoPost(direccionACambiar){
    document.formulario.action=direccionACambiar;
    document.formulario.submit();
}
function mensaje(){
   alert("Alerta");
}

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