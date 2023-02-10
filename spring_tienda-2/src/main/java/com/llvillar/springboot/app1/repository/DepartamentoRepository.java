package com.llvillar.springboot.app1.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.llvillar.springboot.app1.model.Departamento;

public interface DepartamentoRepository extends JpaRepository<Departamento, Integer>{
    
}
