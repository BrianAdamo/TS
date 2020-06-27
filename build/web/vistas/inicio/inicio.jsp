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
                                            
<div>
    <table id="example" class="table table-striped table-hover" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
            </tr>
            <tr>
                <td>Airi Satou</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>$162,700</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
            </tr>

    </table>
                                            </div>
                        
                        <!-- FIN CONTENIDO -->    

                    </div>
</div>
