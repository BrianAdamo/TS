<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Transporte Solis S.A</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="msapplication-tap-highlight" content="no">
   
    <!-- ESTILOS -->
    
    <link href="./main.css" rel="stylesheet">
    
    <link href="css/sw2css.css" rel="stylesheet">
    <link href="css/miscss.css" rel="stylesheet">
    <script type="text/javascript" src="js/sw2js.js"></script>
    
    
</head>
<body>
    <form method="POST" name="formulario" id="formulario" class="needs-validation" novalidate> 
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="fa fa-truck"> Transporte Solis</div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    
            <div class="app-header__content">
                <div class="app-header-left">
                    
                    <ul class="header-menu nav">
                        <li class="nav-item">
                            <a onclick="mensaje();" class="nav-link">
                                <i class="nav-link-icon fa fa-home"> </i>
                                Inicio
                            </a>
                        </li>
                        <li class="btn-group nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-users"></i>
                                Acerca de nosotros
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-phone"></i>
                                Contacto
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-phone"></i>
                                Contacto
                            </a>
                        </li>
                        
                    </ul>        
                </div>
                <%
                                       String msglogeo="";
                                       String msgusuario="";
                                       String msgcargo="";
                                       if(session.getAttribute("mensajeRetornoLogeo")!=null) {
                                       
                                       msglogeo = (String)session.getAttribute("mensajeRetornoLogeo");

                                       if(msglogeo.equals("Logeado")){
                                           msgusuario = (String)session.getAttribute("mensajeRetornoUsuario");
                                           msgcargo = (String)session.getAttribute("mensajeRetornoCargo");
                                           
                                                String divlogout = request.getParameter("divlogout");
                                                if (divlogout != null){
                                                switch(divlogout){     

                                                case "salir": 
                                                    msglogeo.equals(null);      
                                                    session.setAttribute("mensajeRetornoLogeo",null);
                                                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp?vg=login");
                                                    rd.forward(request, response);
                                                }
                                                }
                                           
 %>
                            <div class="app-header-right">
                                <div class="header-btn-lg pr-0">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left">
                                                <div class="btn-group">
                                                    <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                                        <img width="42" class="rounded-circle" src="assets/images/avatars/1.jpg" alt="">
                                                        <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                                    </a>
                                                    <div class="widget-content-left  ml-3 header-user-info">
                                                        <div class="widget-heading">
                                                            <%=msgusuario%>
                                                        </div>
                                                        <div style="color: #123f28" class="widget-subheading">
                                                            <font size="" face=""><%=msgcargo%></font>
                                                        </div>
                                                    </div>
                                                    <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                                        <h6 tabindex="-1" class="dropdown-header">Administrar</h6>
                                                        <button type="button" tabindex="0" class="dropdown-item">Cuenta Usuario</button>
                                                        <button type="button" tabindex="0" class="dropdown-item">Configuracion</button>
                                                        <button type="button" tabindex="0" class="dropdown-item">Acciones</button>
                                                        <div tabindex="-1" class="dropdown-divider"></div>
                                                        <button type="button" tabindex="0" class="dropdown-item"  > 
                                                        <a href="index.jsp?divlogout=salir">
                                                            <i style="color: #ff0844" class="metismenu-icon pe-7s-angle-right-circle"> Salir</i>
                                                            
                                                        </a>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>       
                            </div>                                       
                    <%   
                                                
                                            }    
                                        else{
                                            %>
                                            
                                            <div class="app-header-right">
                                                <div class="header-btn-lg pr-0">
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left  ml-3 header-user-info">
                                                                <div class="widget-heading">
                                                                    <a href="index.jsp?vg=login" style=" color:#28A745"><span class="fas fa-sign-in-alt "></span> Login</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>       
                                            </div>
                                            
                                            <%
                                        }
                                        
                                        if(msglogeo.equals("No Logeado")){
                                       %>
                                            
                                       <script>
                                           Swal.fire({
                                            position: 'top-end',
                                            icon: 'error',
                                            title: 'Usuario no encontrado',
                                            showConfirmButton: false,
                                            timer: 1500
                                          })
                                       </script>
                                            
                                            <%    
                                            }

                                        }
                                        else{

                                         %>
                                        <div class="app-header-right">
                                            <div class="header-btn-lg pr-0">
                                                <div class="widget-content p-0">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left  ml-3 header-user-info">
                                                            <div class="widget-heading">
                                                                <a href="index.jsp?vg=login" style=" color:#28A745"><span class="fas fa-sign-in-alt "></span> Login</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>       
                                        </div>
                                        <%
                                        }
                                        
                                        %>
                  </div>
                </div>
              
       
            
      
                <% 
                   if(msglogeo.equals("Logeado")){              
               %>
               <!-- Menu Izquierdo de Usuario Logeado -->
               
               <div class="app-main col-md-12">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    <div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu">
                                <center>
                                    <li class="app-sidebar__heading">Menu</li></center>

                        <% 
                        //Segun el cargo o tipo de cuenta que posea el usuario le permitira  ver ciertos menus o no en este caso
                        // no puede ver el menu MANTENEDORES si el usuario no es ADMINISTRADOR
                        if(msgcargo.equals("Usuario")||msgcargo.equals("Admin")){               
                        %>      
                                
                                <li>
                                    <a href="index.jsp?vp=inicio">
                                        <i class="metismenu-icon pe-7s-graph2"></i>
                                        Dashboard
                                    </a>
                                </li>
                                <li>
                                    <a href="index.jsp">
                                        <i class="metismenu-icon pe-7s-car"></i>
                                        Viajes
                                    </a>
                                </li>
                                <li>
                                    <a href="index.jsp">
                                        <i class="metismenu-icon pe-7s-cash"></i>
                                        Transferencia
                                    </a>
                                </li>
                                <li>
                                    <a href="index.jsp">
                                        <i class="metismenu-icon pe-7s-news-paper"></i>
                                        Rendiciones
                                    </a>
                                </li>
                                <li>
                                    <a href="index.jsp">
                                        <i class="metismenu-icon pe-7s-news-paper"></i>
                                        Viaticos
                                    </a>
                                </li>
                                <li  >
                                    <a href="index.jsp">
                                        <i class="metismenu-icon pe-7s-wallet"></i>
                                        Sueldos
                                    </a>
                                </li>
                        <% 
                        } if(msgcargo.equals("Admin")){           
                        %>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-note2"></i>
                                        Mantenedores
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="index.jsp?vp=clientes">
                                                <i class="metismenu-icon">
                                                </i>Clientes
                                            </a>
                                        </li>
                                        <li>
                                            <a href="elements-dropdowns.html">
                                                <i class="metismenu-icon">
                                                </i>Empleados
                                            </a>
                                        </li>
                                        <li>
                                            <a href="elements-icons.html">
                                                <i class="metismenu-icon">
                                                </i>Flota
                                            </a>
                                        </li>
                                        <li>
                                            <a href="elements-badges-labels.html">
                                                <i class="metismenu-icon">
                                                </i>Tramos
                                            </a>
                                        </li>
                                        <li>
                                            <a href="index.jsp?vp=usuarios">
                                                <i class="metismenu-icon">
                                                </i>Usuarios
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                        <% 
                        }          
                        %>
                        </ul>
                        </div>
                    </div>
                </div> 
            
        
                 
                
                    <% 
                        if(msglogeo.equals("Logeado")){
                            
                            if(msgcargo.equals("Admin")){  
                                        //Variables Privadas ( Despues de Login)  ADMINISTRADOR  
                                        String variableprivadaadmin = request.getParameter("vp");
                                        if (variableprivadaadmin != null){
                                        switch(variableprivadaadmin){         

                                         case "inicio":
                                    %>
                                         <%@ include file="vistas/inicio/inicio.jsp" %>
                                     <%
                                         break;
                                         case "usuarios":
                                    %>
                                        <%@ include file="vistas/usuarios/usuarios.jsp" %>
                                     <%
                                         break;
                                         case "addusuarios":
                                    %>
                                         <%@ include file="vistas/usuarios/addusuarios.jsp" %>
                                     <%
                                         break;
                                         case "editusuarios":
                                    %>
                                         <%@ include file="vistas/usuarios/editusuarios.jsp" %>
                                     <%
                                         break;
                                         case "clientes":
                                    %>
                                         <%@ include file="vistas/clientes/clientes.jsp" %>
                                     <%
                                         break;
                                         case "addclientes":
                                    %>
                                         <%@ include file="vistas/clientes/addclientes.jsp" %>
                                     <%
                                         break;
                                         case "editclientes":
                                    %>
                                         <%@ include file="vistas/clientes/editclientes.jsp" %>
                                     <%
                                         break;
                                             
                                        }
                                    }
                                    
                                                  
                    }
                    if(msgcargo.equals("Usuario")){  
                        //Variables generales ( Despues de Login) Usuario
                        String variableprivadasusuario = request.getParameter("vp");
                        if (variableprivadasusuario != null){
                        switch(variableprivadasusuario){     

                        case "login":
                    %>
                        <%@ include file="vistas/login.jsp" %>
                    <%
                        break;
                    }
                    }
                    }
                    %>
                    </div>    
                </div>
                    
                <!-- Modales --> 
                <%@ include file="vistas/modales.jsp" %>
                <!-- Modales -->
                
                <!--SI EL USUARIO NO ESTA LOGEADO SE MOSTRARA ESTO Completo Sin ASIDE ni ARTICLE-->    
                    <% 
                        
                        }}
                        else{ 
                        //Variables generales Sin estar logeado
                        String variablegeneral = request.getParameter("vg");
                        if (variablegeneral != null){
                        switch(variablegeneral){     

                        case "login":
                    %>
                        <%@ include file="vistas/login.jsp" %>
                    <%
                        break;
                    }
                    }
                    }
            %> 
    </form>

    <!-- Boostrap,jquery y poppers -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <!-- Select -->
    <!-- MIS JS -->
    <script type="text/javascript" src="./assets/scripts/main.js"></script>
    <script type="text/javascript" src="js/misjs.js"></script>
    
</body>
</html>
