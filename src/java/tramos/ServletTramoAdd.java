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
public class ServletTramoAdd extends HttpServlet {

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
            
            String origen = request.getParameter("input_origen_add");
            String destino = request.getParameter("input_destino_add");
            int cliente = Integer.parseInt(request.getParameter("input_cliente_tramo_add"));
            int tarifa = Integer.parseInt(request.getParameter("input_tarifa_add"));
            
            float valor12 = Float.parseFloat(request.getParameter("input_valor12_add"));
            float valor27 = Float.parseFloat(request.getParameter("input_valor27_add"));
            float acercamiento12 = Float.parseFloat(request.getParameter("input_acercamiento12_add"));
            float acercamiento27 = Float.parseFloat(request.getParameter("input_acercamiento27_add"));
            
            String comentario_tramo = request.getParameter("input_comentario_tramo_add");
            String estado_tramo = request.getParameter("input_estado_tramo_add");
            
            String concat = origen+"-"+destino+"-"+cliente+"-"+tarifa;
            
            // Define la conexión
                Connection cn = conexion.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{Call AddTramo (?,?,?,?,?,?,?,?,?,?,?,?)}");
                
                cst.setString(1, origen);
                
                cst.setString(2, destino);
                
                cst.setFloat(3, valor12);
                
                cst.setFloat(4, valor27);
                
                cst.setFloat(5, acercamiento12);
                
                cst.setFloat(6, acercamiento27);
                
                cst.setInt(7, cliente);
                
                cst.setInt(8, tarifa);
                
                cst.setString(9, comentario_tramo);
                
                cst.setString(10, estado_tramo);
                
                cst.setString(11, concat);
                
                // Definimos los tipos de los parametros de salida del procedimiento almacenado
                cst.registerOutParameter(12, java.sql.Types.VARCHAR);
               
               
                // Ejecuta el procedimiento almacenado
                cst.execute();
                
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetorno = cst.getString(12);
                
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
            Logger.getLogger(ServletTramoAdd.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletTramoAdd.class.getName()).log(Level.SEVERE, null, ex);
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
