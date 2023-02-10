package com.llvillar.springboot.app1.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.llvillar.springboot.app1.model.Cliente;


public interface ClientesService {
    public Page<Cliente> findAll(Pageable page);
    public Cliente find(int codigo);
    public void save(Cliente cliente);
    public void update(Cliente cliente);
    public void delete(int codigo);
}
