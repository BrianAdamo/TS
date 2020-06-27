/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientes;

import config.conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import clientes.clientes;

/**
 *
 * @author Brian
 */
public class consultaclientes {
    public static LinkedList<clientes> getclientes()
   {
      LinkedList<clientes> listaclientes =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = conexion.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "select * From clientes";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                
                clientes cli = new clientes();
                cli.setId_cliente(rs.getInt("id_cli"));
                cli.setNombre_cliente(rs.getString("nombre_cli"));
                cli.setRut_cliente(rs.getString("rut_cli"));
                cli.setContacto_cliente(rs.getString("contacto_cli"));
                cli.setCelular_cliente(rs.getString("celular_cli"));
                cli.setCorreo_cliente(rs.getString("correo_cli"));
                cli.setDias_pago_cliente(rs.getInt("dias_pago_cli"));
                cli.setEstado_cliente(rs.getString("estado_cli"));
                listaclientes.add(cli);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaclientes;
   }
}
