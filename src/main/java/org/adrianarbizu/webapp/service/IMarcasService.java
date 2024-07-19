package org.adrianarbizu.webapp.service;
import java.util.List;
import org.adrianarbizu.webapp.model.Marcas;

public interface IMarcasService {
    
    void agregarMarca(Marcas marca);
    
    void eliminarMarca(int marcaId);
    
    void editarMarca(Marcas marca);
    
    List<Marcas> listarMarcas(
    );
    
    Marcas buscarMarcaPorId(int marcaId);
}