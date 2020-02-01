
package usuarios;

import config.conexion;
import java.sql.*;
import java.util.LinkedList;


public class consultausuario {
     public static LinkedList<usuarios> getusuarios()
   {
      LinkedList<usuarios> listarusuarios =new LinkedList<>();
      try
      {
          
            //Define conexion
            Connection con = conexion.getConnection();
            
            //Arma la consulta y la ejecuta
            String Consulta = "select * From usuarios  ";
            Statement stmtConsulta = con.createStatement();
            ResultSet rs = stmtConsulta.executeQuery(Consulta);
            
            while (rs.next())
            {
                
                usuarios user = new usuarios();
                user.setId_usuario(rs.getInt("id_usuario"));
                user.setNombre_usuario(rs.getString("nombre_usuario"));
                user.setRut_usuario(rs.getString("rut_usuario"));
                user.setEmail_usuario(rs.getString("email_usuario"));
                user.setContra_usuario(rs.getString("contra_usuario"));
                user.setCargo_usuario(rs.getString("cargo_usuario"));
                listarusuarios.add(user);
            }
            rs.close();
            stmtConsulta.close();
            con.close();
        }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listarusuarios;
   }
}
