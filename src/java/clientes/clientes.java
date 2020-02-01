/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientes;

/**
 *
 * @author Brian
 */
public class clientes {
    int id_cliente;
    String nombre_cliente;
    String rut_cliente;
    String contacto_cliente;
    String celular_cliente;
    String correo_cliente;
    int dias_pago_cliente;
    String estado_cliente;

    public clientes() {
    }

    public clientes(String nombre_cliente, String rut_cliente, String contacto_cliente, String celular_cliente, String correo_cliente, int dias_pago_cliente, String estado_cliente) {
        this.nombre_cliente = nombre_cliente;
        this.rut_cliente = rut_cliente;
        this.contacto_cliente = contacto_cliente;
        this.celular_cliente = celular_cliente;
        this.correo_cliente = correo_cliente;
        this.dias_pago_cliente = dias_pago_cliente;
        this.estado_cliente = estado_cliente;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public String getContacto_cliente() {
        return contacto_cliente;
    }

    public void setContacto_cliente(String contacto_cliente) {
        this.contacto_cliente = contacto_cliente;
    }

    public String getCelular_cliente() {
        return celular_cliente;
    }

    public void setCelular_cliente(String celular_cliente) {
        this.celular_cliente = celular_cliente;
    }

    public String getCorreo_cliente() {
        return correo_cliente;
    }

    public void setCorreo_cliente(String correo_cliente) {
        this.correo_cliente = correo_cliente;
    }

    public int getDias_pago_cliente() {
        return dias_pago_cliente;
    }

    public void setDias_pago_cliente(int dias_pago_cliente) {
        this.dias_pago_cliente = dias_pago_cliente;
    }

    public String getEstado_cliente() {
        return estado_cliente;
    }

    public void setEstado_cliente(String estado_cliente) {
        this.estado_cliente = estado_cliente;
    }
    
    
    
}
