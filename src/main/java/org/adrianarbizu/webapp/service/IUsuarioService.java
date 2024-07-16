/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Usuario;

/**
 *
 * @author Esteban
 */
public interface IUsuarioService {
    public List<Usuario> listarUsuario();
    
    public void agregarUsuario();
    
    public void eliminarUsuario(int usuarioId);
    
    public Usuario buscarUsuario(int usuarioId);
    
    public void editarUsuario(Usuario usuario);
    
}
