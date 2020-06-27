<%@page import="java.util.LinkedList"%>
<%@page import="usuarios.consultausuario"%>
<%@page import="usuarios.usuarios"%>

<script>

</script>

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
                                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle btn btn-info sombra">
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
                            <div > 
                                <div class="col">
                                 <input type="text" name="idedit" id="idedit">
                                 <input type="text" name="nombreedit" id="nombreedit">   
                                 <input type="text" name="rutedit" id="rutedit">   
                                 <input type="text" name="emailedit" id="emailedit">   
                                 <input type="text" name="contraedit" id="contraedit">   
                                 <select name="cargoedit" id="cargoedit">
                                     <option>Admin</option>
                                     <option>Usuario</option>
                                 </select>
                                 <button type="button" id="btnmodaldelete" class="btn btn-primary btnmodaldelete" data-toggle="modal" data-target="#modaldeleteusuario"> Modal </button>
                                
                                 </div>  
                            </div>
                        
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"><h5 class="card-title">Listado de Usuarios</h5>
                                        <div class="  table-responsive">
                                            <table class="table table-bordered  table-striped table-hover" >
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Nombre</th>
                                                    <th>Rut</th>
                                                    <th>Email</th>
                                                    <th>Contraseña</th>
                                                    <th>Cargo</th>
                                                    <th>Acciones</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                    
                                                    <%
                                                    LinkedList<usuarios> listausuario = consultausuario.getusuarios();
                                                    for (int i=0;i<listausuario.size();i++)
                                                    {   

                                                        out.println("<tr>");
                                                        out.println("<td scope=\"row\"><span id=\"id_usuario"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getId_usuario()+"</span></td>");
                                                        out.println("<td scope=\"row\"><span id=\"nombre_usuario"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getNombre_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"rut_usuario"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getRut_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"email_usuario"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getEmail_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"contra_usuario"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getContra_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"cargo_usuario"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getCargo_usuario()+"</span></td>");
                                                        out.println("<td>"
                                                        + "<div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">"
                                                        + "<button  data-id="+listausuario.get(i).getId_usuario()+ " type=\"button\" class=\"btn btn-info sombra-acciones btn-sm fas fa-edit editbtn\"> Editar</button>"
                                                        + "<button data-id="+listausuario.get(i).getId_usuario()+ " type=\"button\"  class=\"btn btn-danger sombra-acciones btn-sm fas fa-trash delbtn\" data-toggle=\"modal\" >Eliminar</button>"
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
                                              title: 'Usuario Existente!',
                                              text: 'Rut del usuario ya existe en el sistema.' ,
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
  