/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tramos;

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
public class ServletTramoEdit extends HttpServlet {

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
            
            int id_edit = Integer.parseInt(request.getParameter("input_id_edit"));
            
            String origen_edit = request.getParameter("input_origen_edit");
            String destino_edit = request.getParameter("input_destino_edit");
            int cliente_edit = Integer.parseInt(request.getParameter("input_cliente_tramo_edit"));
            int tarifa_edit = Integer.parseInt(request.getParameter("input_tarifa_edit"));
            
            float valor12_edit = Float.parseFloat(request.getParameter("input_valor12_edit"));
            float valor27_edit = Float.parseFloat(request.getParameter("input_valor27_edit"));
            float acercamiento12_edit = Float.parseFloat(request.getParameter("input_acercamiento12_edit"));
            float acercamiento27_edit = Float.parseFloat(request.getParameter("input_acercamiento27_edit"));
            
            String comentario_tramo_edit = request.getParameter("input_comentario_tramo_edit");
            String estado_tramo_edit = request.getParameter("input_estado_tramo_edit");
            
            String concat_edit = origen_edit+"-"+destino_edit+"-"+cliente_edit+"-"+tarifa_edit;
            
            
            // Define la conexión
                Connection cn = conexion.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{Call EditTramo (?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                
                cst.setString(1, origen_edit);
                cst.setString(2, destino_edit);
                cst.setFloat(3, valor12_edit);
                cst.setFloat(4, valor27_edit);
                cst.setFloat(5, acercamiento12_edit);
                cst.setFloat(6, acercamiento27_edit);
                cst.setInt(7, cliente_edit);
                cst.setInt(8, tarifa_edit);
                cst.setString(9, comentario_tramo_edit);
                cst.setString(10, estado_tramo_edit);
                cst.setString(11, concat_edit);
                cst.setInt(12, id_edit);
                
                // Definimos los tipos de los parametros de salida del procedimiento almacenado
                cst.registerOutParameter(13, java.sql.Types.VARCHAR);
               
               
                // Ejecuta el procedimiento almacenado
                cst.execute();
                
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetorno = cst.getString(13);
                
                //seteo valor parametro obtenido del procedure
                request.getSession().setAttribute("mensajeRetorno",mensajeRetorno);
                
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp?vp=tramos");
        
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
            Logger.getLogger(ServletTramoEdit.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletTramoEdit.class.getName()).log(Level.SEVERE, null, ex);
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
