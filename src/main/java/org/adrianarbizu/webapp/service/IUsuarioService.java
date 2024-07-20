
package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Usuario;

public interface IUsuarioService {
    public List<Usuario> listarUsuario();
    
    public void agregarUsuario(Usuario usuario);
    
    public void eliminarUsuario(int usuarioId);
    
    public Usuario buscarUsuario(int usuarioId);
    
    public void editarUsuario(Usuario usuario);
    
}
