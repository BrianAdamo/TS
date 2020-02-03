<%@page import="tramos.consultatramos"%>
<%@page import="tramos.tramos"%>
<%@page import="clientes.clientes"%>
<%@page import="clientes.consultaclientes"%>
<%@page import="java.util.LinkedList"%>



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
                                        <div class="page-title-subheading">Registro de tramos.
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
                                <h5 class="card-title">Añadir tramo</h5>
                                <form class="needs-validation" novalidate>
                                    <div class="form-row">
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom01">Origen:</label>
                                            <input type="text" class="form-control filterText" id="input_origen_add" name="input_origen_add" onchange='filterText(this)' placeholder="Origen Traslado" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom01">Destino:</label>
                                            <input type="text" class="form-control filterText" id="input_destino_add" name="input_destino_add" onchange='filterText(this)' placeholder="Destino Traslado" required maxlength="50">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom02">Cliente: </label>
                                            <select type="text" class="form-control" id="input_cliente_tramo_add" name="input_cliente_tramo_add" required maxlength="50" >
                                                <%                        
                                                LinkedList<clientes> listaclientetramo = consultaclientes.getclientes();
                                                %>   
                                                <option selected disabled>Nombre Cliente</option>
                                                <% 
                                                for (int i=0;i<listaclientetramo.size();i++)
                                                { 
                                                %>
                                                <option value="<%= listaclientetramo.get(i).getId_cliente()%>"><%= listaclientetramo.get(i).getNombre_cliente()%></option>
                                                <% } %>
                                            </select>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustom02">Tarifas: </label>
                                            <input type="text" class="form-control" id="input_tarifa_add" name="input_tarifa_add" placeholder="Tarifa del Tramo" required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Valor 12m3: </label>
                                            <input type="text" class="form-control" id="input_valor12_add" name="input_valor12_add" placeholder="Valor de 12 m3"  required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Valor 27m3: </label>
                                            <input type="text" class="form-control" id="input_valor27_add" name="input_valor27_add" placeholder="Valor de 27 m3"  required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Acercamiento 12m3: </label>
                                            <input type="text" class="form-control" id="input_acercamiento12_add" name="input_acercamiento12_add" placeholder="Acercamiento de 12 m3"  required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustom02">Acercamiento 27m3: </label>
                                            <input type="text" class="form-control" id="input_acercamiento27_add" name="input_acercamiento27_add" placeholder="Acercamiento de 27 m3"  required>
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-8 mb-3">
                                            <label for="validationCustom01">Comentario: </label>
                                            <input type="text" class="form-control" id="input_comentario_tramo_add" name="input_comentario_tramo_add" placeholder="Comentarios" maxlength="200">
                                            <div class="invalid-feedback">
                                                ¡Campo Vacio!
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationCustom02">Estado Tramo </label>
                                            <select type="text" class="form-control" id="input_estado_tramo_add" name="input_estado_tramo_add"   required >
                                                <option selected disabled>Estado Tramo</option>
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
                                    <button class="btn btn-danger sombra"  type="button"><a style="color: #fff" href="index.jsp?vp=tramos">Cancelar</a></button>
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
                                                        
                                                        var v_cliente = $('#input_cliente_tramo_add').val();
                                                        var v_valor12 = $('#input_valor12_add').val();
                                                        var v_valor27 = $('#input_valor27_add').val();
                                                        var v_acercamiento12 = $('#input_acercamiento12_add').val();
                                                        var v_acercamiento27 = $('#input_acercamiento27_add').val();
                                                         
                                                        if(v_valor12 === ""){
                                                             $('#input_valor12_add').val("0");
                                                        }
                                                        if(v_valor12 === ""){
                                                             $('#input_valor27_add').val("0");
                                                        }
                                                        if(v_valor12 === ""){
                                                             $('#input_acercamiento12_add').val("0");
                                                        }
                                                        if(v_valor12 === ""){
                                                             $('#input_acercamiento27_add').val("0");
                                                        }
                                                        
                                                        
                                                        if(v_cliente === ""|| v_valor12 === "" || v_valor27 === "" ||  v_acercamiento12 === "" || v_acercamiento27 == ""){
                                                            
                                                                var v_cliente_mod = $('#input_cliente_tramo_add').val();
                                                                var v_valor12_mod = $('#input_valor12_add').val();
                                                                var v_valor27_mod = $('#input_valor27_add').val();
                                                                var v_acercamiento12_mod = $('#input_acercamiento12_add').val();
                                                                var v_acercamiento27_mod = $('#input_acercamiento27_add').val();
                                                                
                                                                if(v_cliente_mod === ""|| v_valor12_mod === "" || v_valor27_mod === "" ||  v_acercamiento12_mod === "" || v_acercamiento27_mod == ""){
                                                                    Alert("Error");
                                                                }else{
                                                                  document.formulario.action='ServletTramoAdd';
                                                                  document.formulario.submit();  
                                                                }
                                                        }else{
                                                          document.formulario.action='ServletTramoAdd';
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
                                            
                        <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"><h5 class="card-title">Listado de Clientes</h5>
                                        <div class="  table-responsive">
                                            <table name="btramo" id="btramo" class="table table-bordered  table-striped table-hover" >
                                                <thead>
                                                <tr>
                                                    <th>Origen</th>
                                                    <th>Destino</th>
                                                    <th>Cliente</th>
                                                    <th>Tarifa</th>
                                                    <th>Comentario</th>
                                                    <th>Estado</th>
                                                    <th>Acciones</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                    LinkedList<tramos> listatramo2 = consultatramos.gettramos();
                                                    for (int i=0;i<listatramo2.size();i++)
                                                    {   

                                                        out.println("<tr>");
                                                        out.println("<td><span id=\"origen_tramo"+listatramo2.get(i).getId_tramo()+"\">"+listatramo2.get(i).getOrigen_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"destino_tramo"+listatramo2.get(i).getId_tramo()+"\">"+listatramo2.get(i).getDestino_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"nombre_cliente"+listatramo2.get(i).getId_tramo()+"\">"+listatramo2.get(i).getNombre_cliente()+"</span></td>");
                                                        out.println("<td><span id=\"version_tarifa"+listatramo2.get(i).getId_tramo()+"\">"+listatramo2.get(i).getVersion_tarifa()+"</span></td>");
                                                        out.println("<td><span id=\"comentario_tramo"+listatramo2.get(i).getId_tramo()+"\">"+listatramo2.get(i).getComentario_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"estado_tramo"+listatramo2.get(i).getId_tramo()+"\">"+listatramo2.get(i).getEstado_tramo()+"</span></td>");
                                                        out.println("<td>"
                                                        + "<div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">"
                                                        + "<button  data-id="+listatramo2.get(i).getId_tramo()+ " type=\"button\" class=\"btn btn-info sombra-acciones btn-sm fas fa-edit editbtntramo\">Editar</button>"
                                                        + "<button data-id="+listatramo2.get(i).getId_tramo()+ " type=\"button\"  class=\"btn btn-danger sombra-acciones btn-sm fas fa-trash delbtntramo\" data-toggle=\"modal\" >Eliminar</button>"
                                                        + "</div>"
                                                        + ""
                                                        +"</td>");
                                                        out.println("</tr>");
                                                    }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                
                            
                        
                        <!-- FIN CONTENIDO -->    

                    </div>
</div>

<script>

</script>