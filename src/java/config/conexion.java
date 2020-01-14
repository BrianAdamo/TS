package config;

import java.sql.*;

public class conexion {
    Connection con;

    public conexion() throws ClassNotFoundException, SQLException{      
           Class.forName("com.mysql.jdbc.Driver");
           //LOCAL
           con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/stsl", "root", "root");
           //SERVIDOR
           //con = (Connection) DriverManager.getConnection("jdbc:mysql://node40626-patagoniaindomita.jelastic.saveincloud.net:3306/pic_reservas", "root", "ctYozw5F5R");
    }   
    
    public static java.sql.Connection getConnection() throws Exception
    {
        // Establece el nombre del driver a utilizar
        String dbDriver = "com.mysql.jdbc.Driver";       
        // Establece la conexion a utilizar contra la base de datos
        //local
        String dbConnString = "jdbc:mysql://localhost:3306/stsl?serverTimezone=UTC";
        //servidor
        //String dbConnString = "jdbc:mysql://node40626-patagoniaindomita.jelastic.saveincloud.net:3306/pic_reservas?verifyServerCertificate=false&useSSL=true";       
        // Establece el usuario de la base de datos
        String dbUser = "root";       
        // Establece la contraseÃ±a de la base de datos
        //local
        String dbPassword = "root"; 
        //Servidor
        //String dbPassword = "ctYozw5F5R";       
        // Establece el driver de conexiÃ³n
        Class.forName(dbDriver).newInstance();       
        // Retorna la conexiÃ³n
        return DriverManager.getConnection(dbConnString, dbUser, dbPassword);
    } 
}
