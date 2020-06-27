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
                                <h5 class="card-title">Añadir Usuario</h5>
                                <form class="needs-validation" novalidate>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Nombre:</label>
                                            <input type="text" class="form-control" id="input_nombre_add" name="input_nombre_add" placeholder="Nombre Usuario" required maxlength="20">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Rut: </label>
                                            <input type="text" class="form-control" id="input_rut_add" onchange="formateaRutUsuario(this.value)" name="input_rut_add" placeholder="Rut Usuario"  required maxlength="15" minlength="10">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Email: </label>
                                            <input type="text" class="form-control" id="input_email_add" name="input_email_add" placeholder="Email Usuario"  required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Contraseña:</label>
                                            <input type="text" class="form-control" id="input_contra_add" name="input_contra_add" placeholder="Contraseña Usuario" required maxlength="8">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Cargo: </label>
                                            <!--<input type="text" class="form-control" id="input_cargo_add" name="input_cargo_add" placeholder="Cargo Usuario"  required maxlength="20">-->
                                            <select type="text" class="form-control" id="input_cargo_add" name="input_cargo_add"   required maxlength="20" >
                                                <option selected disabled>Cargo Usuario</option>
                                                <option>Admin</option>
                                                <option>Usuario</option>
                                            </select>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        
                                    </div>
                                   
                                    <div style="text-align: right" class="col-md-12">
                                    <button class="btn btn-success sombra" type="submit" >Agregar</button>
                                    <button class="btn btn-danger sombra"  type="button"><a style="color: #fff" href="index.jsp?vp=usuarios">Cancelar</a></button>
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
                                                        
                                                        document.formulario.action='ServletUsuariosAdd';
                                                        document.formulario.submit();
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
function formateaRutUsuario(rut) {
    
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
    
    $('#input_rut_add').val(rutPuntos);
}
</script>