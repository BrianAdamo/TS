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
                                    <div>Clientes
                                        <div class="page-title-subheading">Registro de cliente.
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
                                <h5 class="card-title">Añadir Cliente</h5>
                                <form class="needs-validation" novalidate>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Nombre Cliente:</label>
                                            <input type="text" class="form-control" id="input_nombre_cliente_add" name="input_nombre_cliente_add" placeholder="Nombre Cliente" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Rut Cliente: </label>
                                            <input type="text" class="form-control" id="input_rut_cliente_add" onchange="formateaRutCliente(this.value)" name="input_rut_cliente_add" placeholder="Rut Cliente"  required maxlength="15">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Nombre Contacto: </label>
                                            <input type="text" class="form-control" id="input_nombre_contacto_cliente_add" name="input_nombre_contacto_cliente_add" placeholder="Nombre Contacto"  required maxlength="100">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Celular Contacto:: </label>
                                            <input type="text" class="form-control" id="input_celular_contacto_cliente_add" name="input_celular_contacto_cliente_add" placeholder="Celular Contacto" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Correo Contacto: </label>
                                            <input type="text" class="form-control" id="input_correo_contacto_cliente_add" name="input_correo_contacto_cliente_add" placeholder="Correo Contacto" required maxlength="100">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Dias de pagos: </label>
                                            <input type="text" class="form-control" id="input_dias_pagos_cliente_add" name="input_dias_pagos_cliente_add" placeholder="Dias de Pago" required maxlength="5">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Estado Cliente: </label>
                                            <!--<input type="text" class="form-control" id="input_cargo_add" name="input_cargo_add" placeholder="Cargo Usuario"  required maxlength="20">-->
                                            <select type="text" class="form-control" id="input_estado_cliente_add" name="input_estado_cliente_add"   required maxlength="15" >
                                                <option selected disabled>Estado Cliente</option>
                                                <option>Activo</option>
                                                <option>Desactivado</option>
                                            </select>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        
                                    </div>
                                   
                                    <div style="text-align: right" class="col-md-12">
                                    <button class="btn btn-success sombra" type="submit" >Agregar</button>
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
                                                        
                                                         var v_dias_cliente = $('#input_dias_pagos_cliente_add').val();
                                                        
                                                        if(v_dias_cliente === ""){
                                                            
                                                                $('#input_dias_pagos_cliente_add').val("1");
                                                                
                                                                var v_dias_cliente_mod = $('#input_dias_pagos_cliente_add').val
                                                                
                                                                if(v_dias_cliente_mod === ""){
                                                                    Alert("Error");
                                                                }else{
                                                                  document.formulario.action='ServletClienteAdd';
                                                                  document.formulario.submit();  
                                                                }
                                                        }else{
                                                          document.formulario.action='ServletClienteAdd';
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
function formateaRutCliente(rut) {
    
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
    
    $('#input_rut_cliente_add').val(rutPuntos);
}
</script>