/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuarios;

/**
 *
 * @author Brian
 */
public class usuarios {
    int id_usuario;
    String nombre_usuario;
    String rut_usuario;
    String email_usuario;
    String contra_usuario;
    String cargo_usuario;

    public usuarios() {
    }

    public usuarios(String nombre_usuario, String rut_usuario, String email_usuario, String contra_usuario, String cargo_usuario) {
        this.nombre_usuario = nombre_usuario;
        this.rut_usuario = rut_usuario;
        this.email_usuario = email_usuario;
        this.contra_usuario = contra_usuario;
        this.cargo_usuario = cargo_usuario;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getRut_usuario() {
        return rut_usuario;
    }

    public void setRut_usuario(String rut_usuario) {
        this.rut_usuario = rut_usuario;
    }

    public String getEmail_usuario() {
        return email_usuario;
    }

    public void setEmail_usuario(String email_usuario) {
        this.email_usuario = email_usuario;
    }

    public String getContra_usuario() {
        return contra_usuario;
    }

    public void setContra_usuario(String contra_usuario) {
        this.contra_usuario = contra_usuario;
    }

    public String getCargo_usuario() {
        return cargo_usuario;
    }

    public void setCargo_usuario(String cargo_usuario) {
        this.cargo_usuario = cargo_usuario;
    }
    
    
    
    
}
