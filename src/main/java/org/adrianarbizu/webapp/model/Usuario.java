/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.adrianarbizu.webapp.model;

/**
 *
 * @author Esteban
 */
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table(name = "Usuario")
@Entity
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int usuarioId;
    private String nombreUsuario;
    private String contraUsuario;

    public Usuario() {
    }

    public Usuario(int usuarioId, String nombreUsuario, String contraUsuario) {
        this.usuarioId = usuarioId;
        this.nombreUsuario = nombreUsuario;
        this.contraUsuario = contraUsuario;
    }

    public Usuario(String nombreUsuario, String contraUsuario) {
        this.nombreUsuario = nombreUsuario;
        this.contraUsuario = contraUsuario;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getContraUsuario() {
        return contraUsuario;
    }

    public void setContraUsuario(String contraUsuario) {
        this.contraUsuario = contraUsuario;
    }

    @Override
    public String toString() {
        return "Usuario{" + "usuarioId=" + usuarioId + ", nombreUsuario=" + nombreUsuario + ", contraUsuario=" + contraUsuario + '}';
    }   
}
