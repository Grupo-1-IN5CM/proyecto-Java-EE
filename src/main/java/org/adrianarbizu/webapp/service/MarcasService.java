package org.adrianarbizu.webapp.service;


import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
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
      EntityTransaction transaction = em.getTransaction();
        
        try{
            transaction.begin();
            em.persist(marca);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
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
    public List<Marcas> listarMarca() {
        return em.createQuery("SELECT m FROM Marcas m", Marcas.class).getResultList();
    }

    @Override
    public Marcas buscarMarcaPorId(int marcaId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}