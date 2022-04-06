/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package flota;

/**
 *
 * @author BrianAdamo
 */

import config.conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import flota.flota;

public class consultaflota {
    
     public static LinkedList<flota> getflota()
   {
      LinkedList<flota> listaflota =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = conexion.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "select * From flota";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                
                flota flt = new flota();
                flt.setId_equipo(rs.getInt("id_equipo"));
                flt.setPatente_equipo(rs.getString("patente_equipo"));
                flt.setTipo_equipo(rs.getString("tipo_equipo"));
                flt.setMarca_equipo(rs.getString("marca_equipo"));
                flt.setModelo_equipo(rs.getString("modelo_equipo"));
                flt.setNro_motor_equipo(rs.getString("nro_motor_equipo"));
                flt.setNro_chasis_equipo(rs.getString("nro_chasis_equipo"));
                flt.setAnho_equipo(rs.getInt("anho_equipo"));
                flt.setTipo_estanque_equipo(rs.getString("tipo_estanque_equipo"));
                flt.setEstado_equipo(rs.getString("estado_equipo"));
                listaflota.add(flt);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaflota;
   }
    
}
