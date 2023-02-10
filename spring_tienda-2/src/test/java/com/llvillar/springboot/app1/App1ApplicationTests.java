package com.llvillar.springboot.app1;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.llvillar.springboot.app1.model.Permiso;
import com.llvillar.springboot.app1.model.Usuario;
import com.llvillar.springboot.app1.repository.PermisoRepository;
import com.llvillar.springboot.app1.repository.UsuarioRepository;

@SpringBootTest
class App1ApplicationTests {

	@Test
	void contextLoads() {
	}

	@Autowired
	UsuarioRepository usuarioRepository;

	@Autowired
	PermisoRepository permisoRepository;

	@Autowired
	PasswordEncoder encoder;

	@Test
	void crearUsuariosTest() {

		Permiso p1 = new Permiso(1,"ADMIN");
		Permiso p2 = new Permiso(2,"INVITADO");
		Permiso p3 = new Permiso(3,"PRODUCTOS");
		Permiso p4 = new Permiso(4,"CLIENTES");
		Permiso p5 = new Permiso(5,"PEDIDOS");
		Permiso p6 = new Permiso(6,"PROVEEDORES");
		Permiso p7 = new Permiso(7,"EMPLEADOS");
		Permiso p8 = new Permiso(8, "DEPARTAMENTOS");
		Permiso p9 = new Permiso(9, "CESTA");


		List<Permiso> listaPermisos = new ArrayList<Permiso>();
		listaPermisos.add(p1);
		listaPermisos.add(p2);
		listaPermisos.add(p3);
		listaPermisos.add(p4);
		listaPermisos.add(p5);
		listaPermisos.add(p6);
		listaPermisos.add(p7);
		listaPermisos.add(p8);
		listaPermisos.add(p9);


		List<Permiso> permisosUsuario1 = new ArrayList<Permiso>();
		permisosUsuario1.add(p1);


		List<Permiso> permisosUsuario2 = new ArrayList<Permiso>();
		permisosUsuario2.add(p5);

		List<Permiso> permisosUsuario3 = new ArrayList<Permiso>();
		permisosUsuario3.add(p5);
		permisosUsuario3.add(p4);

		List<Permiso> permisosUsuario4 = new ArrayList<Permiso>();
		permisosUsuario4.add(p2);

		permisoRepository.save(p1);
		permisoRepository.save(p2);
		permisoRepository.save(p3);
		permisoRepository.save(p4);
		permisoRepository.save(p5);
		permisoRepository.save(p6);
		permisoRepository.save(p7);
		permisoRepository.save(p8);
		permisoRepository.save(p9);


		Usuario usuario1 = new Usuario(1,"Usuario1","usuario1@gmail.com",encoder.encode("oretania"));
		Usuario usuario2 = new Usuario(2,"Usuario2","usuario2@gmail.com",encoder.encode("oretania"));
		Usuario usuario3 = new Usuario(3,"Usuario3","usuario3@gmail.com",encoder.encode("oretania"));
		Usuario usuario4 = new Usuario(4,"Usuario4","usuario4@gmail.com",encoder.encode("oretania"));

		usuario1.setPermissions(permisosUsuario1);
		usuario2.setPermissions(permisosUsuario2);
		usuario3.setPermissions(permisosUsuario3);
		usuario4.setPermissions(permisosUsuario4);

		
		usuarioRepository.save(usuario1);
		usuarioRepository.save(usuario2);
		usuarioRepository.save(usuario3);
		usuarioRepository.save(usuario4);

	}
}
