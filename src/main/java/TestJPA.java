
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import org.adrianarbizu.webapp.model.Carro;
import org.adrianarbizu.webapp.util.JpaUtil;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author informatica
 */
public class TestJPA {
    private static EntityManager em = JpaUtil.getEntityManager();
    
    public static void main(String[]args){
        
        TypedQuery<Carro> query = em.createQuery("SELECT c FROM Carro c", Carro.class);
        List<Carro> carros = query.getResultList();
        
        carros.forEach(carro -> System.out.println(carro));
        for(Carro carro:carros){
            System.out.print(carro);
        }
        
    }
}
