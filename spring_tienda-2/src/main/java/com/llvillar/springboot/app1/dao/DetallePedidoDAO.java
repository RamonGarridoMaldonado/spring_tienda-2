package com.llvillar.springboot.app1.dao;

import java.util.List;

import com.llvillar.springboot.app1.model.DetallePedido;
import com.llvillar.springboot.app1.model.Pedido;

public interface DetallePedidoDAO {
    
    public void insert(Pedido pedido, DetallePedido detallePedido);

    public List<DetallePedido> findDetalle(Pedido pedido);

    public void delete(Pedido pedido);


}