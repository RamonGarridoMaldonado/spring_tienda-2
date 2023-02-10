package com.llvillar.springboot.app1.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.llvillar.springboot.app1.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Integer>{
    
}
