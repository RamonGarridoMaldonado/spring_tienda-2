package com.llvillar.springboot.app1.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Pedido;


public interface PedidosService {
    public Page<Pedido> findAll(Pageable page);
    public Pedido find(int codigo);
    public void save(Pedido pedido);
    // public void update(Pedido producto);
    public void delete(int codigo);
}
