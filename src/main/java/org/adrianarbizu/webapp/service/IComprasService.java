package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Compras;

public interface IComprasService {
<<<<<<< HEAD
<<<<<<< HEAD
=======
    
>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera
    public List<Compras> listarCompras();
    
    public void agregarCompra(Compras compra);
    
    public void eliminarCompra(int compraId);
    
    public Compras buscarCompraPorId(int compraId);
    
    public void editarCompra(Compras compra);
}