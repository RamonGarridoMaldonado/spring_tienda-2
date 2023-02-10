package com.llvillar.springboot.app1.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cliente {

    @Id
    @GeneratedValue
    private int codigo;

    private String nombre;
    private String apellidos;
    private String email;
    private String dni;
    private String telefono;
    private String direccion;
    private boolean vip;

    public Cliente() {
    }

    public Cliente(int codigo) {
        this.codigo = codigo;
    }

    public Cliente(int codigo, String nombre, String apellidos, String email, String dni, String telefono,
            String direccion,
            boolean vip) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.dni = dni;
        this.telefono = telefono;
        this.direccion = direccion;
        this.vip = vip;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public boolean isVip() {
        return vip;
    }

    public void setVip(boolean vip) {
        this.vip = vip;
    }

    

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + codigo;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Cliente other = (Cliente) obj;
        if (codigo != other.codigo)
            return false;
        return true;
    }

    // public List<Pedido> getPedidos() {
    //     return pedidos;
    // }

    // public void setPedidos(List<Pedido> pedidos) {
    //     this.pedidos = pedidos;
    // }

}
