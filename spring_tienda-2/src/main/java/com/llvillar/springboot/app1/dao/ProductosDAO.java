package com.llvillar.springboot.app1.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Producto;

public interface ProductosDAO {
    
    public Page<Producto> findAll(Pageable page);
    public Producto findById(int codigo);
    public void insert(Producto Producto);
    public void update(Producto Producto);
    public void delete(int codigo);
    public void updateImage(Producto producto);

}