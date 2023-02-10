package com.llvillar.springboot.app1.services.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.llvillar.springboot.app1.model.Producto;
import com.llvillar.springboot.app1.repository.ProductoRepository;
import com.llvillar.springboot.app1.services.ProductosService;

@Service
public class ProductosServiceImpl implements ProductosService{

    @Autowired
    ProductoRepository repository;

    @Override
    public Page<Producto> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public Producto find(int codigo) {
        Optional<Producto> findById = repository.findById(codigo);
        if(findById != null){
            return findById.get();
        }
        return null;
    }

    @Override
    public void save(Producto producto) {
        repository.save(producto);
    }

    @Override
    public void update(Producto producto) {
        
        if(producto.getImage() == null || producto.getImage().length == 0){
            producto.setImage(this.find(producto.getCodigo()).getImage());
        }

        repository.save(producto);

        //     if(producto.getImage() != null && producto.getImage().length > 0 ){
    //         repository.updateImage(producto);
    //     }
    }

    @Override
    public void delete(int codigo) {
        repository.deleteById(codigo);        
    }
}