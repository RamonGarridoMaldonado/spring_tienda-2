package com.llvillar.springboot.app1.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Cliente;

public interface ClientesDAO {
    
    public Page<Cliente> findAll(Pageable page);
    public Cliente findById(int codigo);
    public void insert(Cliente cliente);
    public void update(Cliente cliente);
    public void delete(int codigo);

}