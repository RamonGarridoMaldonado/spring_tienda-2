package com.llvillar.springboot.app1.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.llvillar.springboot.app1.model.Permiso;
import com.llvillar.springboot.app1.model.Usuario;
import com.llvillar.springboot.app1.repository.UsuarioRepository;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UsuarioRepository UsuarioRepository;

    public Usuario createUsuario(Usuario Usuario) {
        return UsuarioRepository.save(Usuario);
    }

    public Usuario updateUsuario(Usuario Usuario) {
        return UsuarioRepository.save(Usuario);
    }

    public void deleteUsuario(Long UsuarioId) {
        UsuarioRepository.deleteById(UsuarioId);
    }

    public Usuario getUsuario(Long UsuarioId) {
        return UsuarioRepository.findById(UsuarioId).orElse(null);
    }

    public List<Usuario> getAllUsuarios() {
        return UsuarioRepository.findAll();
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Usuario u = UsuarioRepository.findByName(username);

        List<Permiso> permissions = u.getPermissions();
        List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
        for (Permiso p : permissions) {
            roles.add(new SimpleGrantedAuthority(p.getNombre()));
        }

        UserDetails user = org.springframework.security.core.userdetails.User.builder()
        .username(u.getName())
        .password(u.getPassword())
        .authorities(roles)
        .build();
        
        return user;
    }


    
}
