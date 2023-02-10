package com.llvillar.springboot.app1.services.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.llvillar.springboot.app1.model.Proveedor;
import com.llvillar.springboot.app1.repository.ProveedorRepository;
import com.llvillar.springboot.app1.services.ProveedoresService;

@Service
public class ProveedoresServiceImpl implements ProveedoresService{

    @Autowired
    ProveedorRepository repository;

    @Override
    public Page<Proveedor> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public Proveedor find(int codigo) {
        Optional<Proveedor> findById = repository.findById(codigo);
        if(findById != null){
            return findById.get();
        } 
        return null;       
    }

    @Override
    public void save(Proveedor proveedor) {
        repository.save(proveedor);
    }

    @Override
    public void update(Proveedor proveedor) {
        repository.save(proveedor);        
    }

    @Override
    public void delete(int codigo) {
        repository.deleteById(codigo);        
    }


    
}