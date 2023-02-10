package com.llvillar.springboot.app1.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Pedido;

public interface PedidosDAO {
    
    public Page<Pedido> findAll(Pageable page);
    public Pedido findById(int codigo);
    public void insert(Pedido pedido);
    public void update(Pedido pedido);
    public void delete(int codigo);
}