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
//Colocar puntos y guias por defecto a el Rut


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



// BUSCADOR EN TABLAS 
 $(document).ready(function(){
 $("#search").keyup(function(){
 _this = this;
 // Show only matching TR, hide rest of them
 $.each($("#mytable tbody tr"), function() {
 if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
 $(this).hide();
 else
 $(this).show();
 });
 });
});


