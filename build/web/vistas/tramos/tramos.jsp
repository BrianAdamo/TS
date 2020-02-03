<%@page import="tramos.tramos"%>
<%@page import="tramos.consultatramos"%>
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
                                        <div class="page-title-subheading">Tramos de viajes, valores, estados y versiones de cada tarifa.
                                        </div>
                                    </div>
                                </div>
                        <!-- FIN HEADER --> 
                                <div class="page-title-actions">
                                    <div class="d-inline-block dropdown">
                                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle btn btn-info sombra">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                <i class="fas fa-bars fa-w-20"></i>
                                            </span>
                                            Acciones
                                        </button>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a href="index.jsp?vp=addtramos" class="nav-link">
                                                        <i class="nav-link-icon lnr-inbox"></i>
                                                        <span class="btn-icon-wrapper pr-2 opacity-7">
                                                            <i class="fas fa-plus fa-w-20"></i>
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
                            <div > 
                                <div  class="col">
                                 <input type="text" name="idtramoedit" id="idtramoedit">
                                 <input type="text" name="nombretramoedit" id="origentramoedit">
                                 <input type="text" name="nombretramoedit" id="destinotramoedit"> 
                                 <input type="text" name="clientetramoedit" id="clientetramoedit">
                                 <input type="text" name="valor12edit" id="valor12edit">
                                 <input type="text" name="valor24edit" id="valor24edit">
                                 <input type="text" name="acercamiento12edit" id="acercamiento12edit">
                                 <input type="text" name="acercamiento24edit" id="acercamiento24edit">
                                 <input type="text" name="tarifaedit" id="tarifaedit">   
                                 <input type="text" name="comentarioedit" id="comentarioedit">   
                                 <select name="estadotramoedit" id="estadotramoedit">
                                     <option>Activo</option>
                                     <option>Desactivado</option>
                                 </select>
                                 <button type="button" id="btnmodaldelete" class="btn btn-primary btnmodaldelete" data-toggle="modal" data-target="#modaldeletetramo"> Modal </button>
                                
                                 </div>  
                            </div>
                        
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"><h5 class="card-title">Listado de Clientes</h5>
                                        <div class="  table-responsive">
                                            <table class="table table-bordered  table-striped table-hover" >
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Origen</th>
                                                    <th>Destino</th>
                                                    <th>Cliente</th>
                                                    <th>Valor 12</th>
                                                    <th>Valor 27</th>
                                                    <th>Acercamiento 12</th>
                                                    <th>Acercamiento 27</th>
                                                    <th>Tarifa</th>
                                                    <th>Comentario</th>
                                                    <th>Estado</th>
                                                    <th>Acciones</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                    LinkedList<tramos> listatramo = consultatramos.gettramos();
                                                    for (int i=0;i<listatramo.size();i++)
                                                    {   

                                                        out.println("<tr>");
                                                        out.println("<td><span id=\"id_cliente"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getId_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"origen_tramo"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getOrigen_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"destino_tramo"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getDestino_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"nombre_cliente"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getNombre_cliente()+"</span></td>");
                                                        out.println("<td><span id=\"valor_12"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getValor_12()+"</span></td>");
                                                        out.println("<td><span id=\"valor_27"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getValor_27()+"</span></td>");
                                                        out.println("<td><span id=\"acercamiento_12"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getAcercamiento_12()+"</span></td>");
                                                        out.println("<td><span id=\"acercamiento_27"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getAcercamiento_27()+"</span></td>");
                                                        out.println("<td><span id=\"version_tarifa"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getVersion_tarifa()+"</span></td>");
                                                        out.println("<td><span id=\"comentario_tramo"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getComentario_tramo()+"</span></td>");
                                                        out.println("<td><span id=\"estado_tramo"+listatramo.get(i).getId_tramo()+"\">"+listatramo.get(i).getEstado_tramo()+"</span></td>");
                                                        out.println("<td>"
                                                        + "<div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">"
                                                        + "<button  data-id="+listatramo.get(i).getId_tramo()+ " type=\"button\" class=\"btn btn-info sombra-acciones btn-sm fas fa-edit editbtntramo\">Editar</button>"
                                                        + "<button data-id="+listatramo.get(i).getId_tramo()+ " type=\"button\"  class=\"btn btn-danger sombra-acciones btn-sm fas fa-trash delbtntramo\" data-toggle=\"modal\" >Eliminar</button>"
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
                                     
                                                    
                                    <%
                                       if(session.getAttribute("mensajeRetorno")!=null) {
                                       //if ( session.getAttribute("mensajeRetorno").equals("Registrado")){
                                           String msg = (String)session.getAttribute("mensajeRetorno");
                                        
                                           if(msg.equals("Error")){
                                       %>
                                       
                                       <script>
                                           
                                            Swal.fire({
                                              position: 'top-end',
                                              icon: 'error',
                                              title: 'Error!',
                                              text: 'Existe un error - Contacte al desarrollador.' ,
                                              showConfirmButton: false,
                                              timer: 3000,
                                              timerProgressBar: true,
                                              onOpen: (toast) => {
                                              toast.addEventListener('mouseenter', Swal.stopTimer)
                                              toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                            })
                                        
                                        </script> 
                                       
                                        <%    
                                            }
                                       if(msg.equals("Existente")){

                                         %>
                                       
                                        <script>
                                           
                                            Swal.fire({
                                              position: 'top-end',
                                              icon: 'error',
                                              title: 'Tramo Existente!',
                                              text: 'Ya existe este tramo para el cliente en esta version de tarifa, si desea agregar este tramo pruebe cambiando la version de tarifa.' ,
                                              showConfirmButton: false,
                                              timer: 3000,
                                              timerProgressBar: true,
                                              onOpen: (toast) => {
                                              toast.addEventListener('mouseenter', Swal.stopTimer)
                                              toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                            })
                                        
                                        </script> 
                                           
                                            <%
                                        }
                                        if(msg.equals("Registrado")){

                                         %>
                                       
                                         <script>
                                            Swal.fire({
                                              position: 'top-end',
                                              icon: 'success',
                                              title: 'Usuario Registrado!',
                                              text: 'Usuario registrado exitosamente.' ,
                                              showConfirmButton: false,
                                              timer: 3000,
                                              timerProgressBar: true,
                                              onOpen: (toast) => {
                                              toast.addEventListener('mouseenter', Swal.stopTimer)
                                              toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                            })
                                        </script>
                                           
                                            <%
                                        }
                                        if(msg.equals("Eliminado")){

                                         %>
                                       
                                         <script>
                                            Swal.fire({
                                              position: 'top-end',
                                              icon: 'success',
                                              title: 'Usuario Eliminado!',
                                              text: 'Usuario eliminado exitosamente.' ,
                                              showConfirmButton: false,
                                              timer: 3000,
                                              timerProgressBar: true,
                                              onOpen: (toast) => {
                                              toast.addEventListener('mouseenter', Swal.stopTimer)
                                              toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                            })
                                        </script>
                                           
                                            <%
                                        }
                                         if(msg.equals("Editado")){

                                         %>
                                       
                                         <script>
                                            Swal.fire({
                                              position: 'top-end',
                                              icon: 'success',
                                              title: 'Usuario Editado!',
                                              text: 'Usuario editado exitosamente.' ,
                                              showConfirmButton: false,
                                              timer: 3000,
                                              timerProgressBar: true,
                                              onOpen: (toast) => {
                                              toast.addEventListener('mouseenter', Swal.stopTimer)
                                              toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                            })
                                        </script>
                                           
                                            <%
                                        }    
                                        msg.equals(null);      
                                        session.setAttribute("mensajeRetorno",null);
                                        }
                                          %>
  