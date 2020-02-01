/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientes;

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
public class ServletClienteEdit extends HttpServlet {

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
            
                int id_cliente_edit = Integer.parseInt(request.getParameter("input_id_edit"));
                String nombre_cliente_edit = request.getParameter("input_nombre_edit");
                String rut_cliente_edit = request.getParameter("input_rut_edit");
                String nombre_contacto_edit = request.getParameter("input_contacto_edit");
                String celular_contacto_edit = request.getParameter("input_celular_edit");
                String correo_cliente_edit = request.getParameter("input_correo_edit");
                int dias_cliente_edit = Integer.parseInt(request.getParameter("input_dias_edit"));
                String estado_cliente_edit = request.getParameter("input_estado_edit");
                
                // Define la conexión
                Connection cn = conexion.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{Call EditCliente (?,?,?,?,?,?,?,?,?)}");
                // Parametro 1 del procedimiento almacenado
                cst.setString(1, nombre_cliente_edit);
                // Parametro 2 del procedimiento almacenado
                cst.setString(2, rut_cliente_edit);
                // Parametro 3 del procedimiento almacenado
                cst.setString(3, nombre_contacto_edit);
                
                cst.setString(4, celular_contacto_edit);
                
                cst.setString(5, correo_cliente_edit);
                
                cst.setInt(6, dias_cliente_edit);
                
                cst.setString(7, estado_cliente_edit);
                
                cst.setInt(8, id_cliente_edit);
                
                // Definimos los tipos de los parametros de salida del procedimiento almacenado
                cst.registerOutParameter(9, java.sql.Types.VARCHAR);
               
               
                // Ejecuta el procedimiento almacenado
                cst.execute();
                
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetorno = cst.getString(9);
                
                //seteo valor parametro obtenido del procedure
                request.getSession().setAttribute("mensajeRetorno",mensajeRetorno);
                
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp?vp=clientes");
        
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
            Logger.getLogger(ServletClienteEdit.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletClienteEdit.class.getName()).log(Level.SEVERE, null, ex);
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
