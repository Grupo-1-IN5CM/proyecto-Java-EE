
package org.adrianarbizu.webapp.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import java.util.List;
import org.adrianarbizu.webapp.model.Categoria;
import org.adrianarbizu.webapp.util.JpaUtil;

public class CategoriaService implements ICategoriaService{
   
    private static EntityManager em;

    public CategoriaService() {
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public void agregarCategoria(Categoria categoria) {
        EntityTransaction transaction = em.getTransaction();
        
        try{
            transaction.begin();
            em.persist(categoria);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public void eliminarCategoria(int categoriaId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarCategoria(Categoria categoria) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Categoria buscarCategoriaPorId(int categoriaId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    @Override
    public List<Categoria> listarCategoria() {
        return em.createQuery("SELECT c FROM Categoria c", Categoria.class).getResultList();
    }
        
}
