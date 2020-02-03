/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tramos;

import config.conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import tramos.tramos;

/**
 *
 * @author Brian
 */
public class consultatramos {
    public static LinkedList<tramos> gettramos()
   {
      LinkedList<tramos> listartramos =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = conexion.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "SELECT * FROM vista_tramos";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                tramos tra = new tramos();
                tra.setId_tramo(rs.getInt("id_tramo"));
                tra.setOrigen_tramo(rs.getString("origen_tramo"));
                tra.setDestino_tramo(rs.getString("destino_tramo"));
                tra.setValor_12(rs.getFloat("valor_12"));
                tra.setValor_27(rs.getFloat("valor_27"));
                tra.setAcercamiento_12(rs.getFloat("acercamiento_12"));
                tra.setAcercamiento_27(rs.getFloat("acercamiento_27"));
                tra.setNombre_cliente(rs.getString("nombre_cliente"));
                tra.setVersion_tarifa(rs.getInt("version_tarifa"));
                tra.setComentario_tramo(rs.getString("comentario_tramo"));
                tra.setEstado_tramo(rs.getString("estado_tramo"));
                listartramos.add(tra);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listartramos;
   }
}
