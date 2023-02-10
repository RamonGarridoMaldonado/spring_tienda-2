package com.llvillar.springboot.app1.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Producto;


public interface ProductosService {
    public Page<Producto> findAll(Pageable page);
    public Producto find(int codigo);
    public void save(Producto producto);
    public void update(Producto producto);
    public void delete(int codigo);
}
