package com.llvillar.springboot.app1.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Proveedor;


public interface ProveedoresService {
    // public List<Proveedor> findAll();
    public Proveedor find(int codigo);
    public void save(Proveedor proveedor);
    public void update(Proveedor proveedor);
    public void delete(int codigo);
    public Page<Proveedor> findAll(Pageable pageable);
}
