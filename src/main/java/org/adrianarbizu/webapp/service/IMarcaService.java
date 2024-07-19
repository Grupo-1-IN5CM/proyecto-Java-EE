/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Carro;

/**
 *
 * @author Esteban
 */
public interface IMarcaService {
    public List<Carro> listarMarca();
    
    public void agregarMarca();
    
    public void eliminarMarca(int carroId);
    
    public Carro buscarMarca(int carroId);
    
    public void editarMarca(Carro carro);
    
}
