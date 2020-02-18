

<%@page import="clientes.consultaclientes"%>
<%@page import="clientes.clientes"%>
<%@page import="java.util.LinkedList"%>

<%
   int idtedit = Integer.parseInt(request.getParameter("idtramoedit"));
   
   String origentedit = request.getParameter("origentramoedit");
   String destinotedit = request.getParameter("destinotramoedit");
   String clientetedit = request.getParameter("clientetramoedit");
   
   float valor12tedit = Float.parseFloat(request.getParameter("valor12edit"));
   float valor27tedit = Float.parseFloat(request.getParameter("valor27edit"));
   float acercamiento12tedit = Float.parseFloat(request.getParameter("acercamiento12edit"));
   float acercamiento27tedit = Float.parseFloat(request.getParameter("acercamiento27edit"));
   
   int tarifatedit = Integer.parseInt(request.getParameter("tarifaedit"));
   
   String comentariotedit = request.getParameter("comentarioedit");
   String estadotedit = request.getParameter("estadotramoedit");
   
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
                                    <div>Tramos
                                        <div class="page-title-subheading">Edición de tramos.
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
                                <h5 class="card-title">Editar tramo</h5>
                                <form class="needs-validation" novalidate>
                                    <div class="form-row">
                                        <div hidden class="col-md-3 mb-3">
                                            <label for="validationCustom01">Id:</label> 
                                            <input type="text" class="form-control" id="input_id_edit" name="input_id_edit" value="<%=idtedit%>" readonly>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom01">Origen:</label> <a id="ValOrigenEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_origen_edit" name="input_origen_edit"  placeholder="Origen Traslado" value="<%=origentedit%>" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom01">Destino:</label> <a id="ValDestinoEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_destino_edit" name="input_destino_edit"  placeholder="Destino Traslado" value="<%=destinotedit%>" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom02">
                                            Cliente: 
                                            <i id="ValClienteEditicon" name="ValClienteEdit" class="fas fa-exclamation-triangle" style="color: red" ></i><i id="ValClienteEdittext" data-toggle="tooltip" data-placement="top" title="Para poder continuar tiene que confirmar el cliente, seleccionando el actual nuevamente o cambiandolo.">Confirme el cliente por favor</i> </label>
                                            <select type="text" class="form-control" id="input_cliente_tramo_edit" name="input_cliente_tramo_edit" onchange="cambiocolor()"  required >
                                                
                                                 
                                                <%                        
                                                LinkedList<clientes> listaclientetramoedit = consultaclientes.getclientes();
                                                %>   
                                                <optgroup label="Seleccion Actual">
                                                <option selected Disabled><%=clientetedit%></option>
                                                <optgroup label="Clientes disponibles">
                                                <% 
                                                for (int i=0;i<listaclientetramoedit.size();i++)
                                                { 
                                                %>
                                                <option value="<%= listaclientetramoedit.get(i).getId_cliente()%>"><%= listaclientetramoedit.get(i).getNombre_cliente()%></option>
                                                <% } %>
                                                
                                                
                                            </select>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom02">Tarifas: </label> <a id="ValTarifaEdit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_tarifa_edit" name="input_tarifa_edit" placeholder="Tarifa del Tramo" value="<%=tarifatedit%>" required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Valor 12m3: </label> <a id="ValValor12Edit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_valor12_edit" name="input_valor12_edit" placeholder="Valor de 12 m3" value="<%=valor12tedit%>" required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Valor 27m3: </label> <a id="ValValor27Edit" class="fas fa-eye" style="color: #2b935e;" data-toggle="tooltip" data-placement="top" title="Indicador de cambios"></a>
                                            <input type="text" class="form-control" id="input_valor27_edit" name="input_valor27_edit" placeholder="Valor de 27 m3" value="<%=valor27tedit%>" required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Acercamiento 12m3: </label>
                                            <input type="text" class="form-control" id="input_acercamiento12_edit" name="input_acercamiento12_edit" placeholder="Acercamiento de 12 m3" value="<%=acercamiento12tedit%>" required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Acercamiento 27m3: </label>
                                            <input type="text" class="form-control" id="input_acercamiento27_edit" name="input_acercamiento27_edit" placeholder="Acercamiento de 27 m3" value="<%=acercamiento27tedit%>" required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-8 mb-3">
                                            <label for="validationCustom01">Comentario: </label>
                                            <input type="text" class="form-control" id="input_comentario_tramo_edit" name="input_comentario_tramo_edit" placeholder="Comentarios" value="<%=comentariotedit%>" maxlength="200">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Estado Tramo </label>
                                            <select type="text" class="form-control" id="input_estado_tramo_edit" name="input_estado_tramo_edit" required >
                                               <option Value="<%=estadotedit%>" selected readonly><%=estadotedit%></option>
                                                <% 
                                                if (estadotedit.equals("Activo")){
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
                                    <button class="btn btn-danger sombra"  type="button"><a style="color: #fff" href="index.jsp?vp=tramos">Cancelar</a></button>
                                    </div>
                                </form> 
                            </div>
                        </div> 
                        <!-- FIN CONTENIDO -->    

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
                                                        
                                                        var v_cliente_edit = $('#input_cliente_tramo_edit').val();
                                                        var v_valor12_edit = $('#input_valor12_edit').val();
                                                        var v_valor27_edit = $('#input_valor27_edit').val();
                                                        var v_acercamiento12_edit = $('#input_acercamiento12_edit').val();
                                                        var v_acercamiento27_edit = $('#input_acercamiento27_edit').val();
                                                         
                                                        if(v_valor12_edit === ""){
                                                             $('#input_valor12_edit').val("0");
                                                        }
                                                        if(v_valor27_edit === ""){
                                                             $('#input_valor27_edit').val("0");
                                                        }
                                                        if(v_acercamiento12_edit === ""){
                                                             $('#input_acercamiento12_edit').val("0");
                                                        }
                                                        if(v_acercamiento27_edit === ""){
                                                             $('#input_acercamiento27_edit').val("0");
                                                        }
                                                        
                                                        
                                                        if(v_cliente_edit === ""|| v_valor12_edit === "" || v_valor27_edit === "" ||  v_acercamiento12_edit === "" || v_acercamiento27_edit == ""){
                                                            
                                                                var v_cliente_edit_mod = $('#input_cliente_tramo_add').val();
                                                                var v_valor12_edit_mod = $('#input_valor12_add').val();
                                                                var v_valor27_edit_mod = $('#input_valor27_add').val();
                                                                var v_acercamiento12_edit_mod = $('#input_acercamiento12_add').val();
                                                                var v_acercamiento27_edit_mod = $('#input_acercamiento27_add').val();
                                                                
                                                                if(v_cliente_edit_mod === ""|| v_valor12_edit_mod === "" || v_valor27_edit_mod === "" ||  v_acercamiento12_edit_mod === "" || v_acercamiento27_edit_mod == ""){
                                                                    Alert("Error");
                                                                }else{
                                                                  document.formulario.action='ServletTramoEdit';
                                                                  document.formulario.submit();  
                                                                }
                                                        }else{
                                                          document.formulario.action='ServletTramoEdit';
                                                          document.formulario.submit();  
                                                        }
            
            
                                                        
                                                    }
                                                    form.classList.add('was-validated');
                                                }, false);
                                            });
                                        }, false);
                                    })();
                                </script>