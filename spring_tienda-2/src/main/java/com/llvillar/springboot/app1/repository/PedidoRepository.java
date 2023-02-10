package com.llvillar.springboot.app1.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.llvillar.springboot.app1.model.Pedido;

public interface PedidoRepository extends JpaRepository<Pedido, Integer>{
    
}
