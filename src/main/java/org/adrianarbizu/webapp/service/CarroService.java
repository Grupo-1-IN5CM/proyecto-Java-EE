package org.adrianarbizu.webapp.service;

import jakarta.persistence.EntityManager;
import java.util.List;
import org.adrianarbizu.webapp.model.Carro;
import org.adrianarbizu.webapp.util.JpaUtil;

public class CarroService implements ICarroService {

    private static EntityManager em;

    public CarroService() {
        this.em = JpaUtil.getEntityManager();
    }

    @Override
    public void agregarCarro() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarCarro(int carroId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarCarro(Carro carro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Carro> listarCarro() {
        return em.createQuery("SELECT c FROM Carro c", Carro.class).getResultList();
    }

    @Override
    public Carro buscarCarroPorId(int carroId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
