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
                                    <div>Dashboard
                                        <div class="page-title-subheading">
                                        </div>
                                    </div>
                                </div>
                        <!-- FIN HEADER --> 
                                <div class="page-title-actions">
                                    
                                </div>    
                            </div>
                        </div>            
                        <!-- INICIO CONTENIDO -->
                        <div class="row">
                                <div class="col-lg-12 col-xl-4">
                                    <div class="card mb-3 widget-content">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Usuarios Registrados</div>
                                                <div class="widget-subheading">Total Usuarios</div>
                                            </div>
                                            <div class="widget-content-right">
                                                <%
                                                    LinkedList<usuarios> contarusuarios = consultausuario.getusuarios();
                                                    int cantidad = contarusuarios.size();
                                                      %> 
                                                <div class="widget-numbers text-success"><span><%=cantidad%></span></div>
                                            </div>
                                        </div>
                                            
                                    </div>
                                    <div class="card mb-3">
                                        <div class="card-body">
                                            <h5 class="card-title">Simple table
                                            <input type="text" class="form-control pull-right" style="width:20%" id="search" placeholder="Type to search table...">
                                            </h5>
                                            
                                            <table id="mytable"  class="mb-0 table">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Username</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>@mdo</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td>@fat</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">3</th>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td>@twitter</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div> 
                                    <div class="card mb-3 widget-content">        
                                        <div class="position-relative form-group"><label for="exampleCustomSelect" class="">Custom Select</label>
                                            <select type="select" id="exampleCustomSelect" name="customSelect" class="custom-select">
                                                <option value="">Select</option>
                                                <option>Value 1</option>
                                                <option>Value 2</option>
                                                <option>Value 3</option>
                                                <option>Value 4</option>
                                                <option>Value 5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="card mb-3 widget-content">        
                                        <div class="position-relative form-group">
                                            <label for="exampleFile" class="">File</label>
                                            <input name="file" id="exampleFile" type="file" class="form-control-file">
                                            <small class="form-text text-muted">This is some placeholder block-level help text
                                            for the above input. It's a bit lighter and easily wraps to a new line.</small>
                                        </div>
                                        <button class="mt-1 btn btn-primary">Submit</button>
                                    </div>        
                                       
                                </div>
                        </div>
                          
                        
                        <!-- FIN CONTENIDO -->    

                    </div>
</div>
