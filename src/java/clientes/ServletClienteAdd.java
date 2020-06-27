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
public class ServletClienteAdd extends HttpServlet {

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
            
            String nombre_cliente = new String(request.getParameter("input_nombre_cliente_add").getBytes("ISO-8859-1"), "UTF-8");
            String rut_cliente = request.getParameter("input_rut_cliente_add");
            String nombre_contacto = new String(request.getParameter("input_nombre_contacto_cliente_add").getBytes("ISO-8859-1"), "UTF-8");
            String celular_contacto = request.getParameter("input_celular_contacto_cliente_add");
            String correo_cliente = new String(request.getParameter("input_correo_contacto_cliente_add").getBytes("ISO-8859-1"), "UTF-8");
            int dias_cliente = Integer.parseInt(request.getParameter("input_dias_pagos_cliente_add"));
            String estado_cliente= request.getParameter("input_estado_cliente_add");
            
            // Define la conexión
                Connection cn = conexion.getConnection(); 
                // Llamada al procedimiento almacenado
                CallableStatement cst = cn.prepareCall("{Call AddCliente (?,?,?,?,?,?,?,?)}");
                // Parametro 1 del procedimiento almacenado
                cst.setString(1, nombre_cliente);
                // Parametro 2 del procedimiento almacenado
                cst.setString(2, rut_cliente);
                // Parametro 3 del procedimiento almacenado
                cst.setString(3, nombre_contacto);
                
                cst.setString(4, celular_contacto);
                
                cst.setString(5, correo_cliente);
                
                cst.setInt(6, dias_cliente);
                
                cst.setString(7, estado_cliente);
                
                // Definimos los tipos de los parametros de salida del procedimiento almacenado
                cst.registerOutParameter(8, java.sql.Types.VARCHAR);
               
               
                // Ejecuta el procedimiento almacenado
                cst.execute();
                
                // Se obtienen la salida del procedimineto almacenado
                String mensajeRetorno = cst.getString(8);
                
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
            Logger.getLogger(ServletClienteAdd.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletClienteAdd.class.getName()).log(Level.SEVERE, null, ex);
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
