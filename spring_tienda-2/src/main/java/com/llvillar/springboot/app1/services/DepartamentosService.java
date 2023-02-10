package com.llvillar.springboot.app1.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Departamento;


public interface DepartamentosService {
    public Page<Departamento> findAll(Pageable page);
    public Departamento find(int codigo);
    public void save(Departamento Departamento);
    public void update(Departamento Departamento);
    public void delete(int codigo);
}
