
package org.adrianarbizu.webapp.service;
import jakarta.persistence.EntityManager;
<<<<<<< HEAD
import jakarta.persistence.EntityTransaction;
=======
>>>>>>> Adrian-Arbizu
import java.util.List;
import org.adrianarbizu.webapp.model.Compras;
import org.adrianarbizu.webapp.util.JpaUtil;

public class ComprasService implements IComprasService {

    private static EntityManager em;

    public ComprasService() {
        this.em = JpaUtil.getEntityManager(
        );
 }

    @Override
    public void agregarCompra(Compras compra) {
<<<<<<< HEAD
        EntityTransaction transaction = em.getTransaction();
        
        try{
            transaction.begin();
            em.persist(compra);
            transaction.commit();
        }catch(Exception e){
            if(transaction.isActive()){
                transaction.rollback();
            }
            e.printStackTrace();
        }
=======
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
>>>>>>> Adrian-Arbizu
    }

    @Override
    public void eliminarCompra(int compraId) {
       throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }
 

    @Override
    public void editarCompra(Compras compra) {
    throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Compras> listarCompras() {
    return em.createQuery("SELECT c FROM Compras c", Compras.class).getResultList();
    }

    @Override
    public Compras buscarCompraPorId(int compraId) {
    throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}