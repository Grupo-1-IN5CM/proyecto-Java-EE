package org.adrianarbizu.webapp.service;
import java.util.List;
import org.adrianarbizu.webapp.model.Marcas;

public interface IMarcasService {
<<<<<<< HEAD
    
    void agregarMarca(Marcas marca);
    
    void eliminarMarca(int marcaId);
    
    void editarMarca(Marcas marca);
    
    List<Marcas> listarMarcas(
    );
    
    Marcas buscarMarcaPorId(int marcaId);
=======
    public List<Marcas> listarMarca();
    
    public void agregarMarca(Marcas marcas);
    
    public void eliminarMarca(int marcaId);
    
    public Marcas buscarMarcaPorId(int marcaId);
    
    public void editarMarca(Marcas marcas);
>>>>>>> Giovanni-Carrera
}