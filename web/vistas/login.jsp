<link href="css/login.css" rel="stylesheet">

<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <div class="app-main">
     <!--  CODIGO DEL LOGIN -->
        <div class="container">
            <div class="wrapper fadeInDown">
                <div id="formContent">
                  
                  <!-- Espacio en Blanco -->
                  <div class="fadeIn first">
                    <!--<img src="assets/images/avatars/1.jpg" id="icon" alt="User Icon" /> -->
                    <br>
                  </div>
                  
                  <!-- Icon0 -->
                  <div class="fadeIn first">
                    <!--<img src="assets/images/avatars/1.jpg" id="icon" alt="User Icon" /> -->
                    <a id="icon" Class="fas fa-user fa-5x"></a>
                  </div>
                  
                  <!-- Espacio en Blanco -->
                  <div class="fadeIn first">
                    <!--<img src="assets/images/avatars/1.jpg" id="icon" alt="User Icon" /> -->
                    <br>
                  </div>
                  
                <form class="needs-validation" novalidate>
                    <div class="form-row">
                        <div class="col-md-12 mb-12">
                            <input type="text" id="loginrut" name="loginrut" class="fadeIn second form-control"  placeholder="Rut" required>
                            <div class="invalid-feedback">
                                ¡Campo Vacio!
                            </div>
                        </div>
                        <div class="col-md-12 mb-12">
                            <input type="password" id="logincontra" name="logincontra" class="fadeIn third form-control"  placeholder="Contraseña" required>
                            <div class="invalid-feedback">
                                ¡Campo Vacio!
                            </div>
                        </div>
                        
                        <!-- Espacio en Blanco -->
                        <div class="fadeIn first">
                          <!--<img src="assets/images/avatars/1.jpg" id="icon" alt="User Icon" /> -->
                          <br>
                        </div>
                    
                        <div class="col-md-12 mb-12">
                            <button type="submit" class="fadeIn fourth btn btn-info">Iniciar Sesión</button>
                        </div>
                        
                        <!-- Espacio en Blanco -->
                        <div class="fadeIn first">
                          <!--<img src="assets/images/avatars/1.jpg" id="icon" alt="User Icon" /> -->
                          <br>
                        </div>
                        
                    </div>
                    
                    
                      
                </form> 
                  
                  
                   
                  

                  <!-- Remind Passowrd -->
                  <div id="formFooter">
                    <a class="underlineHover" href="#">¿Olvido su contraseña?</a>
                  </div>

                </div>
            </div>
        <!--  CODIGO DEL LOGIN -->
        </div>
    </div>
</div>
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
                                                        document.formulario.action='ServletLogin';
                                                        document.formulario.submit();
                                                    }
                                                    form.classList.add('was-validated');
                                                }, false);
                                            });
                                        }, false);
                                    })();
                                </script>
