<%
   int idcli= Integer.parseInt(request.getParameter("idedit"));
   String nombrecli= new String(request.getParameter("nombreedit").getBytes("ISO-8859-1"), "UTF-8");
   String rutcli= request.getParameter("rutedit");
   String contactocli= new String(request.getParameter("contactoedit").getBytes("ISO-8859-1"), "UTF-8");
   String celularcli= request.getParameter("celularedit");
   String correocli= new String(request.getParameter("emailedit").getBytes("ISO-8859-1"), "UTF-8");
   String diascli= request.getParameter("diasedit");
   String estadocli= request.getParameter("estadoedit");
%>


<div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                        <!-- INICIO HEADER --> 
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-users icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div>Usuarios
                                        <div class="page-title-subheading">Usuarios del sistema, "Emp" Empleado, "Admin" Administrador y "Test" Usuario de prueba para control de acceso y roles.
                                        </div>
                                    </div>
                                </div>
                        <!-- FIN HEADER --> 
                                <div class="page-title-actions">
                                    
                                </div>    
                            </div>
                        </div>            
                        <!-- INICIO CONTENIDO -->
                        
                            <div class="main-card mb-3 card">
                            <div class="card-body">
                                <h5 class="card-title">Editar Usuario</h5>
                                <form class="needs-validation" novalidate>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Id:</label>
                                            <input type="text" class="form-control" id="input_id_edit" name="input_id_edit" placeholder="Id Cliente" value="<%=idcli%>" readonly>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Nombre Cliente:</label> <a id="ValNombreEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_nombre_edit" name="input_nombre_edit" placeholder="Nombre Cliente" value="<%=nombrecli%>" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Rut: </label> <a id="ValRutEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_rut_edit" name="input_rut_edit" placeholder="Rut Cliente" value="<%=rutcli%>" onchange="formateaRutClienteEdit(this.value)" required maxlength="15">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Nombre de contacto: </label> <a id="ValContactoEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_contacto_edit" name="input_contacto_edit" placeholder="Nombre Contacto"  value="<%=contactocli%>" maxlength="100">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Celular contacto: </label> <a id="ValCelularEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_celular_edit" name="input_celular_edit" placeholder="Celular Contacto"  value="<%=celularcli%>" maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                            <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Correo de contacto: </label> <a id="ValCorreoEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_correo_edit" name="input_correo_edit" placeholder="Correo Contacto"  value="<%=correocli%>" maxlength="100">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Dias de pago:</label> <a id="ValDiasEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_dias_edit" name="input_dias_edit" placeholder="Dias de pago" value="<%=diascli%>" maxlength="5">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Estado: </label> <a id="ValEstadoEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <select type="text" class="form-control" id="input_estado_edit" name="input_estado_edit">
                                                <option Value="<%=estadocli%>"selected><%=estadocli%></option>
                                                <% 
                                                if (estadocli.equals("Activo")){
                                                %>
                                                <option value="Desactivado">Desactivado</option>
                                                <% 
                                                }else{
                                                %>
                                                <option value="Activo">Activo</option>
                                                <% 
                                                }
                                                %>
                                            </select>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div style="text-align: right" class="col-md-12">
                                    <button class="btn btn-warning sombra" type="submit" >Editar</button>
                                    <button class="btn btn-danger sombra"  type="button"><a style="color: #fff" href="index.jsp?vp=clientes">Cancelar</a></button>
                                    </div>
                                </form> 
            
                                <script>
                                    // Example starter JavaScript for disabling form submissions if there are invalid fields
                                    (function() {
                                        'use strict';
                                        window.addEventListener('load', function() {
                                            // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                            var forms = document.getElementsByClassName('needs-validation');
                                            // Loop over them and prevent submission
                                            var validation = Array.prototype.filter.call(forms, function(form) {
                                                form.addEventListener('submit', function(event) {
                                                    if (form.checkValidity() === false) {
                                                        event.preventDefault();
                                                        event.stopPropagation();
                                                    }else{
                                                        
                                                        var v_dias_cliente = $('#input_dias_edit').val();
                                                        
                                                        if(v_dias_cliente === ""){
                                                            
                                                                $('#input_dias_edit').val("1");
                                                                
                                                                var v_dias_cliente_mod = $('#input_dias_edit').val
                                                                
                                                                if(v_dias_cliente_mod === ""){
                                                                    Alert("Error");
                                                                }else{
                                                                  document.formulario.action='ServletClienteEdit';
                                                                  document.formulario.submit();  
                                                                }
                                                        }else{
                                                          document.formulario.action='ServletClienteEdit';
                                                          document.formulario.submit();  
                                                        }
                                                        
                                                        
                                                    }
                                                    form.classList.add('was-validated');
                                                }, false);
                                            });
                                        }, false);
                                    })();
                                </script>
                            </div>
                        </div>
                        
                        <!-- FIN CONTENIDO -->    

                    </div>
</div>
                                            
<script>
function formateaRutClienteEdit(rut) {
    
    var actual = rut.replace(/^0+/, "");
    
    if (actual != '' && actual.length > 1) {
        var sinPuntos = actual.replace(/\./g, "");
        var actualLimpio = sinPuntos.replace(/-/g, "");
        var inicio = actualLimpio.substring(0, actualLimpio.length - 1);
        var rutPuntos = "";
        var i = 0;
        var j = 1;
        for (i = inicio.length - 1; i >= 0; i--) {
            var letra = inicio.charAt(i);
            rutPuntos = letra + rutPuntos;
            if (j % 3 == 0 && j <= inicio.length - 1) {
                rutPuntos = "." + rutPuntos;
            }
            j++;
        }
        var dv = actualLimpio.substring(actualLimpio.length - 1);
        rutPuntos = rutPuntos + "-" + dv;
    }
    
    $('#input_rut_edit').val(rutPuntos);
}
</script>