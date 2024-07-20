/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.adrianarbizu.webapp.service;

import jakarta.persistence.EntityManager;
<<<<<<< HEAD
<<<<<<< HEAD
=======
import jakarta.persistence.EntityTransaction;
>>>>>>> Esteban-Cano
=======
>>>>>>> Adrian-Arbizu
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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Adrian-Arbizu
    public void agregarUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarUsuario(int carroId) {
<<<<<<< HEAD
=======
    public void agregarUsuario(Usuario usuario) {
        EntityTransaction transaction = em.getTransaction();
        
        try{
            transaction.begin();
            em.persist(usuario);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public void eliminarUsuario(int usuarioId) {
>>>>>>> Esteban-Cano
=======
>>>>>>> Adrian-Arbizu
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
<<<<<<< HEAD
<<<<<<< HEAD
    public Usuario buscarUsuario(int carroId) {
=======
    public Usuario buscarUsuario(int usuarioId) {
>>>>>>> Esteban-Cano
=======
    public Usuario buscarUsuario(int carroId) {
>>>>>>> Adrian-Arbizu
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
