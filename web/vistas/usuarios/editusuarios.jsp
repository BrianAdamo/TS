<%
   int id= Integer.parseInt(request.getParameter("idedit"));
   String nombre= request.getParameter("nombreedit");
   String rut= request.getParameter("rutedit");
   String email= request.getParameter("emailedit");
   String contra= request.getParameter("contraedit");
   String cargo= request.getParameter("cargoedit");
   
   String nombreval = "Sin Cambios";

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
                                            <input type="text" class="form-control" id="input_id_edit" name="input_id_edit" placeholder="Id Usuario" value="<%=id%>" readonly>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Nombre:</label> <a id="ValNombreEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_nombre_edit" name="input_nombre_edit" placeholder="Nombre Usuario" value="<%=nombre%>" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Rut: </label> <a id="ValRutEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_rut_edit" name="input_rut_edit" placeholder="Rut Usuario" value="<%=rut%>" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Email: </label> <a id="ValEmailEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_email_edit" name="input_email_edit" placeholder="Email Usuario"  value="<%=email%>" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Contrase�a:</label> <a id="ValContraEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_contra_edit" name="input_contra_edit" placeholder="Contrase�a Usuario" value="<%=contra%>" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Cargo: </label> <a id="ValCargoEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_cargo_edit" name="input_cargo_edit" placeholder="Cargo Usuario" value="<%=cargo%>" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div style="text-align: right" class="col-md-12">
                                    <button class="btn btn-warning sombra" type="submit" >Editar</button>
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
                                                        document.formulario.action='ServletUsuariosEdit';
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