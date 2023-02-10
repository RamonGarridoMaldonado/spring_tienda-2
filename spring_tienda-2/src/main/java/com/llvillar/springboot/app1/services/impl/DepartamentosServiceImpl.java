package com.llvillar.springboot.app1.services.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.llvillar.springboot.app1.model.Departamento;
import com.llvillar.springboot.app1.repository.DepartamentoRepository;
import com.llvillar.springboot.app1.services.DepartamentosService;

@Service
public class DepartamentosServiceImpl implements DepartamentosService{

    @Autowired
    DepartamentoRepository repository;

    @Override
    public Page<Departamento> findAll(Pageable page) {
        return repository.findAll(page);
    }

    @Override
    public Departamento find(int codigo) {
        Optional<Departamento> findById = repository.findById(codigo);
        if(findById != null){
            return findById.get();
        }
        return null;
    }

    @Override
    public void save(Departamento Departamento) {
        repository.save(Departamento);
    }

    @Override
    public void update(Departamento Departamento) {
        repository.save(Departamento);        
    }

    @Override
    public void delete(int codigo) {
        repository.deleteById(codigo);        
    }
    
}