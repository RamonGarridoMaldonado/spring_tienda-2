package com.llvillar.springboot.app1.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="Pedido")
public class Pedido {

    @Id
    @GeneratedValue
    private int codigo;
    private double total;
    private Date fecha;

    @ManyToOne
    private Cliente cliente;

    @Transient
    private List<DetallePedido> detallePedidos;
    
    public Pedido() {
        this.cliente = new Cliente();
        this.detallePedidos = new ArrayList<DetallePedido>();
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public double getTotalCesta() {

        total = 0;
        for (DetallePedido detalle : this.detallePedidos) {
            total += detalle.getCantidad()*detalle.getProducto().getPrecio();
        }

        return total;
    }

    

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public List<DetallePedido> getDetallePedidos() {
        return detallePedidos;
    }

    public void setDetallePedidos(List<DetallePedido> detallePedidos) {
        this.detallePedidos = detallePedidos;
    }

    public double getTotal() {
        return total;
    }

    @PrePersist
    private void prePersistFecha(){
        this.fecha = new Date();
    }
}