package org.adrianarbizu.webapp.service;

import java.util.List;
import org.adrianarbizu.webapp.model.Compras;

public interface IComprasService {
    
    List<Compras> listarCompras();
    
    void agregarCompra(Compras compra);
    
    void eliminarCompra(int compraId);
    
    Compras buscarCompraPorId(int compraId);
    
    void editarCompra(Compras compra);
}