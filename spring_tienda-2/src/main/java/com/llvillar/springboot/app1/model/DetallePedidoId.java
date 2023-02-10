package com.llvillar.springboot.app1.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class DetallePedidoId implements Serializable{

    private int pedido_codigo;
    private int producto_codigo;
    
    public DetallePedidoId() {
    }
    


    public DetallePedidoId(int pedido_codigo, int producto_codigo) {
        this.pedido_codigo = pedido_codigo;
        this.producto_codigo = producto_codigo;
    }



    public int getPedido_codigo() {
        return pedido_codigo;
    }



    public void setPedido_codigo(int pedido_codigo) {
        this.pedido_codigo = pedido_codigo;
    }



    public int getProducto_codigo() {
        return producto_codigo;
    }



    public void setProducto_codigo(int producto_codigo) {
        this.producto_codigo = producto_codigo;
    }




    
    
}
