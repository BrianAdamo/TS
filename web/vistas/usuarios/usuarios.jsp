<%@page import="java.util.LinkedList"%>
<%@page import="usuarios.consultausuario"%>
<%@page import="usuarios.usuarios"%>

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
                        
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"><h5 class="card-title">Listado de Usuarios</h5>
                                        <div class="  table-responsive">
                                            <table class="table table-bordered table-hover" >
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
                                                        out.println("<td scope=\"row\"><span id=\"Id_reserva"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getId_usuario()+"</span></td>");
                                                        out.println("<td scope=\"row\"><span id=\"fecha_ingreso"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getNombre_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"numero_reserva_interno"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getRut_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"nombre_mv"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getEmail_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"numero_reserva_mv"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getContra_usuario()+"</span></td>");
                                                        out.println("<td><span id=\"configuracion_cabana"+listausuario.get(i).getId_usuario()+"\">"+listausuario.get(i).getCargo_usuario()+"</span></td>");
                                                        out.println("<td>"
                                                                         + "<div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">"
                                                                         + "<button data-id="+listausuario.get(i).getId_usuario()+ " type=\"button\" class=\"btn btn-info sombra-acciones btn-sm fas fa-edit\"> Editar</button>"
                                                                         + "<button data-id="+listausuario.get(i).getId_usuario()+ " type=\"button\" class=\"btn btn-danger sombra-acciones btn-sm fas fa-trash\"> Eliminar</button>"
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