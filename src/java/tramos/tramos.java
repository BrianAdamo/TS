/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tramos;

/**
 *
 * @author Brian
 */
public class tramos {
    int id_tramo;
    String origen_tramo;
    String destino_tramo;
    Float valor_12;
    Float valor_27;
    Float acercamiento_12;
    Float acercamiento_27;
    int id_cliente;
    String nombre_cliente;
    int version_tarifa;
    String comentario_tramo;
    String estado_tramo;

    
    
    public tramos() {
    }

    public tramos(String origen_tramo,String destino_tramo, Float valor_12, Float valor_27, Float acercamiento_12, Float acercamiento_27, int id_cliente, int version_tarifa, String comentario_tramo, String estado_tramo) {
        this.origen_tramo = origen_tramo;
        this.destino_tramo = destino_tramo;
        this.valor_12 = valor_12;
        this.valor_27 = valor_27;
        this.acercamiento_12 = acercamiento_12;
        this.acercamiento_27 = acercamiento_27;
        this.id_cliente = id_cliente;
        this.version_tarifa = version_tarifa;
        this.comentario_tramo = comentario_tramo;
        this.estado_tramo = estado_tramo;
    }

    public tramos(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    
    
    public int getId_tramo() {
        return id_tramo;
    }

    public void setId_tramo(int id_tramo) {
        this.id_tramo = id_tramo;
    }

    public String getOrigen_tramo() {
        return origen_tramo;
    }

    public void setOrigen_tramo(String origen_tramo) {
        this.origen_tramo = origen_tramo;
    }

    public String getDestino_tramo() {
        return destino_tramo;
    }

    public void setDestino_tramo(String destino_tramo) {
        this.destino_tramo = destino_tramo;
    }

    public Float getValor_12() {
        return valor_12;
    }

    public void setValor_12(Float valor_12) {
        this.valor_12 = valor_12;
    }

    public Float getValor_27() {
        return valor_27;
    }

    public void setValor_27(Float valor_27) {
        this.valor_27 = valor_27;
    }

    public Float getAcercamiento_12() {
        return acercamiento_12;
    }

    public void setAcercamiento_12(Float acercamiento_12) {
        this.acercamiento_12 = acercamiento_12;
    }

    public Float getAcercamiento_27() {
        return acercamiento_27;
    }

    public void setAcercamiento_27(Float acercamiento_27) {
        this.acercamiento_27 = acercamiento_27;
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
    
    

    public int getVersion_tarifa() {
        return version_tarifa;
    }

    public void setVersion_tarifa(int version_tarifa) {
        this.version_tarifa = version_tarifa;
    }

    public String getComentario_tramo() {
        return comentario_tramo;
    }

    public void setComentario_tramo(String comentario_tramo) {
        this.comentario_tramo = comentario_tramo;
    }

    public String getEstado_tramo() {
        return estado_tramo;
    }

    public void setEstado_tramo(String estado_tramo) {
        this.estado_tramo = estado_tramo;
    }
    
    
    
}
