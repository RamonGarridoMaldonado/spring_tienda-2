package com.llvillar.springboot.app1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.llvillar.springboot.app1.model.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long>  {
    public Usuario findByName(String name);
}
