package com.llvillar.springboot.app1.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.llvillar.springboot.app1.model.Empleado;

public interface EmpleadoRepository extends JpaRepository<Empleado, Integer>{
    
}
