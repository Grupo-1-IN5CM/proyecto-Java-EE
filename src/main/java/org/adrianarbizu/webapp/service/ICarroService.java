package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Carro;


public interface ICarroService  {
    public List<Carro> listarCarro();
    
    public void agregarCarro();
    
    public void eliminarCarro(int carroId);
    
    public Carro buscarCarroPorId(int carroId);
    
    public void editarCarro(Carro carro);
    
}
