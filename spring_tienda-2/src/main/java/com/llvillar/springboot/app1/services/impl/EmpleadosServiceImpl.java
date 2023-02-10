package com.llvillar.springboot.app1.services.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.llvillar.springboot.app1.model.Empleado;
import com.llvillar.springboot.app1.repository.EmpleadoRepository;
import com.llvillar.springboot.app1.services.EmpleadosService;

@Service
public class EmpleadosServiceImpl implements EmpleadosService{

    @Autowired
    EmpleadoRepository repository;

    @Override
    public Page<Empleado> findAll(Pageable page) {
        return repository.findAll(page);
    }

    @Override
    public Empleado find(int codigo) {
        Optional<Empleado> findById = repository.findById(codigo);
        if(findById != null){
            return findById.get();
        }
        return null;
    }

    @Override
    public void save(Empleado Empleado) {
        repository.save(Empleado);
    }

    @Override
    public void update(Empleado Empleado) {
        repository.save(Empleado);        
    }

    @Override
    public void delete(int codigo) {
        repository.deleteById(codigo);        
    }

    @Override
    public List<Empleado> findAll() {
        return repository.findAll();
    }
    
}