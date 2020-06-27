/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuarios;

import config.conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brian
 */
public class ServletUsuariosAdd extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
                //String estado=request.getParameter("EstadoCategoriaGuardar");
                String nombre= new String(request.getParameter("input_nombre_add").getBytes("ISO-8859-1"), "UTF-8");
                String rut= request.getParameter("input_rut_add");
                String email= new String(request.getParameter("input_email_add").getBytes("ISO-8859-1"), "UTF-8");
                String contra= request.getParameter("input_contra_add");
                String cargo= request.getParameter("input_cargo_add");
                
                //int estado = Integer.parseInt(request.getParameter("EstadoSubcategoriaGuardar"));
                
                // Define la conexión
                Connection cn = conexion.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{Call AddUsuario (?,?,?,?,?,?)}");
                // Parametro 1 del procedimiento almacenado
                cst.setString(1, nombre);
                // Parametro 2 del procedimiento almacenado
                cst.setString(2, rut);
                // Parametro 3 del procedimiento almacenado
                cst.setString(3, email);
                
                cst.setString(4, contra);
                
                cst.setString(5, cargo);
//                out.println("<h1>Nombre Categoria:" + nombre+ "</h1>");
//                out.println("<h1>Nombre Categoria:" + descripcion+ "</h1>");
//                out.println("<h1>Nombre Categoria:" + estado+ "</h1>");
                // Definimos los tipos de los parametros de salida del procedimiento almacenado
                cst.registerOutParameter(6, java.sql.Types.VARCHAR);
               
               
                // Ejecuta el procedimiento almacenado
                cst.execute();
                
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetorno = cst.getString(6);
                
                //seteo valor parametro obtenido del procedure
                request.getSession().setAttribute("mensajeRetorno",mensajeRetorno);
                
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp?vp=usuarios");
        
                rd.forward(request, response);
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletUsuariosAdd.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletUsuariosAdd.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
