
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
                                    <div class="d-inline-block dropdown">
                                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn-shadow dropdown-toggle btn btn-info sombra">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                <i class="fas fa-bars fa-w-20"></i>
                                            </span>
                                            Acciones
                                        </button>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a href="index.jsp?vp=addusuarios" class="nav-link">
                                                        <i class="nav-link-icon lnr-inbox"></i>
                                                        <span class="btn-icon-wrapper pr-2 opacity-7">
                                                            <i class="fas fa-plus-square fa-w-20"></i>
                                                        </span>
                                                        <span>
                                                            Agregar
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
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
                                            <input type="text" class="form-control" id="input_nombre_add" placeholder="Nombre Usuario" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Rut: </label>
                                            <input type="text" class="form-control" id="input_rut_add" placeholder="Rut Usuario"  required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Email: </label>
                                            <input type="text" class="form-control" id="input_email_add" placeholder="Email Usuario"  required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom01">Contraseña:</label>
                                            <input type="text" class="form-control" id="input_contra_add" placeholder="Contraseña Usuario" required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Cargo: </label>
                                            <input type="text" class="form-control" id="input_cargo_add" placeholder="Cargo Usuario"  required>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                       
                                    </div>
                                    <div style="text-align: right" class="col-md-12">
                                    <button class="btn btn-success sombra" type="submit">Agregar</button>
                                    <button class="btn btn-danger sombra"  type="button"><a style="color: #fff" href="index.jsp?vp=usuarios">Cancelar</button>
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
 contenedor-div{
     position:relative;
}
.mi-imagen-abajo-derecha{
    position:absolute;
    bottom:5 px;
    right:10 px;
}
    
</script>