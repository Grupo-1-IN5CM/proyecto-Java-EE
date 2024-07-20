
package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Categoria;

public interface ICategoriaService {
   public List<Categoria> listarCategoria();
    
    public void agregarCategoria(Categoria categoria);
    
    public void eliminarCategoria(int categoriaId);
    
    public Categoria buscarCategoriaPorId(int categoriaId);
    
    public void editarCategoria(Categoria categoria);
}
