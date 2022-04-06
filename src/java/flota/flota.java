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
public class flota {
    int id_equipo;
    String patente_equipo;
    String tipo_equipo;
    String marca_equipo;
    String modelo_equipo;
    String nro_motor_equipo;
    String nro_chasis_equipo;
    int anho_equipo;
    String tipo_estanque_equipo;
    String estado_equipo;

    public flota() {
    }

    public flota(String patente_equipo, String tipo_equipo, String marca_equipo, String modelo_equipo, String nro_motor_equipo, String nro_chasis_equipo, int anho_equipo, String tipo_estanque_equipo, String estado_equipo) {
        this.patente_equipo = patente_equipo;
        this.tipo_equipo = tipo_equipo;
        this.marca_equipo = marca_equipo;
        this.modelo_equipo = modelo_equipo;
        this.nro_motor_equipo = nro_motor_equipo;
        this.nro_chasis_equipo = nro_chasis_equipo;
        this.anho_equipo = anho_equipo;
        this.tipo_estanque_equipo = tipo_estanque_equipo;
        this.estado_equipo = estado_equipo;
    }

    public int getId_equipo() {
        return id_equipo;
    }

    public void setId_equipo(int id_equipo) {
        this.id_equipo = id_equipo;
    }

    public String getPatente_equipo() {
        return patente_equipo;
    }

    public void setPatente_equipo(String patente_equipo) {
        this.patente_equipo = patente_equipo;
    }

    public String getTipo_equipo() {
        return tipo_equipo;
    }

    public void setTipo_equipo(String tipo_equipo) {
        this.tipo_equipo = tipo_equipo;
    }

    public String getMarca_equipo() {
        return marca_equipo;
    }

    public void setMarca_equipo(String marca_equipo) {
        this.marca_equipo = marca_equipo;
    }

    public String getModelo_equipo() {
        return modelo_equipo;
    }

    public void setModelo_equipo(String modelo_equipo) {
        this.modelo_equipo = modelo_equipo;
    }

    public String getNro_motor_equipo() {
        return nro_motor_equipo;
    }

    public void setNro_motor_equipo(String nro_motor_equipo) {
        this.nro_motor_equipo = nro_motor_equipo;
    }

    public String getNro_chasis_equipo() {
        return nro_chasis_equipo;
    }

    public void setNro_chasis_equipo(String nro_chasis_equipo) {
        this.nro_chasis_equipo = nro_chasis_equipo;
    }

    public int getAnho_equipo() {
        return anho_equipo;
    }

    public void setAnho_equipo(int anho_equipo) {
        this.anho_equipo = anho_equipo;
    }

    public String getTipo_estanque_equipo() {
        return tipo_estanque_equipo;
    }

    public void setTipo_estanque_equipo(String tipo_estanque_equipo) {
        this.tipo_estanque_equipo = tipo_estanque_equipo;
    }

    public String getEstado_equipo() {
        return estado_equipo;
    }

    public void setEstado_equipo(String estado_equipo) {
        this.estado_equipo = estado_equipo;
    }
   
    
}
