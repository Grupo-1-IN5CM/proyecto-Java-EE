package org.adrianarbizu.webapp.service;


import jakarta.persistence.EntityManager;
import java.util.List;
import org.adrianarbizu.webapp.model.Marcas;
import org.adrianarbizu.webapp.util.JpaUtil;

public class MarcasService implements IMarcasService {

    private static EntityManager em;

    
    public MarcasService() {
        
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public void agregarMarca(Marcas marca) {
      
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarMarca(int marcaId) {
        
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarMarca(Marcas marca) {
        
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Marcas> listarMarcas() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Marcas buscarMarcaPorId(int marcaId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}