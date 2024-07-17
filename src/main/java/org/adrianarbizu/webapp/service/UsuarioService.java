/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.adrianarbizu.webapp.service;

import jakarta.persistence.EntityManager;
import java.util.List;
import org.adrianarbizu.webapp.model.Usuario;
import org.adrianarbizu.webapp.util.JpaUtil;

/**
 *
 * @author Esteban
 */
public class UsuarioService implements IUsuarioService{
    private static EntityManager em;

    public UsuarioService() {
        this.em = JpaUtil.getEntityManager();
    }
    
    @Override
    public void agregarUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarUsuario(int carroId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarUsuario(Usuario usuario) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Usuario> listarUsuario() {
        return em.createQuery("SELECT u FROM Usuario u", Usuario.class).getResultList();
    }

    @Override
    public Usuario buscarUsuario(int carroId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
