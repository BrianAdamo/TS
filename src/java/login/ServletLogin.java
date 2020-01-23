/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

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
public class ServletLogin extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            
            String rut= request.getParameter("loginrut");
            String contra= request.getParameter("logincontra");
            
             // Define la conexión
                Connection cn = conexion.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{Call Login (?,?,?,?,?)}");
                // Parametro 1 del procedimiento almacenado
                cst.setString(1, rut);
                // Parametro 2 del procedimiento almacenado
                cst.setString(2, contra);
                
                // Logeo
                cst.registerOutParameter(3, java.sql.Types.VARCHAR);
                // Usuario
                cst.registerOutParameter(4, java.sql.Types.VARCHAR);
                // Cargo
                cst.registerOutParameter(5, java.sql.Types.VARCHAR);
               
               
                // Ejecuta el procedimiento almacenado
                cst.execute();
                
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetornoLogeo = cst.getString(3);
                String mensajeRetornoUsuario = cst.getString(4);
                String mensajeRetornoCargo = cst.getString(5);
                
                //seteo valor parametro obtenido del procedure
                request.getSession().setAttribute("mensajeRetornoLogeo",mensajeRetornoLogeo);
                request.getSession().setAttribute("mensajeRetornoUsuario",mensajeRetornoUsuario);
                request.getSession().setAttribute("mensajeRetornoCargo",mensajeRetornoCargo);
                
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp?");
        
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
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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
