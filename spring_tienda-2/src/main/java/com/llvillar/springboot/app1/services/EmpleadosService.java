package com.llvillar.springboot.app1.services;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Empleado;


public interface EmpleadosService {
    public List<Empleado> findAll();
    public Page<Empleado> findAll(Pageable page);
    public Empleado find(int codigo);
    public void save(Empleado cliente);
    public void update(Empleado cliente);
    public void delete(int codigo);
}
