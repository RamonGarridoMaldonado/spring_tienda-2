package com.llvillar.springboot.app1.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.llvillar.springboot.app1.model.DetallePedido;
import com.llvillar.springboot.app1.model.DetallePedidoId;

public interface DetallePedidoRepository extends JpaRepository<DetallePedido, DetallePedidoId>{

    public void deleteByPedidoCodigo(int codigo_pedido);
    public List<DetallePedido> findByPedidoCodigo(int codigo_pedido);
    
}
