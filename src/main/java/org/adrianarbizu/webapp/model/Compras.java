/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.adrianarbizu.webapp.model;

/**
 *
 * @author Esteban
 */
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.sql.Date;

@Table(name = "Compras")
@Entity
public class Compras {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int compraId;
<<<<<<< HEAD
    private int usuarioId;
    private int carroId;
    private String fechacompra;
=======
    private String usuario;
    private String carro;
    private Date fechaCompra;
>>>>>>> Adrian-Arbizu
    private Double total;
    
    public Compras() {
    }

<<<<<<< HEAD
    public Compras(int compraId, int usuarioId, int carroId, String fechacompra, Double total) {
=======
    public Compras(int compraId, String usuario, String carro, Date fechaCompra, Double total) {
>>>>>>> Adrian-Arbizu
        this.compraId = compraId;
        this.usuario = usuario;
        this.carro = carro;
        this.fechaCompra = fechaCompra;
        this.total = total;
    }

<<<<<<< HEAD
    public Compras(int usuarioId, int carroId, String fechacompra, Double total) {
        this.usuarioId = usuarioId;
        this.carroId = carroId;
        this.fechacompra = fechacompra;
=======
    public Compras(String usuario, String carro, Date fechaCompra, Double total) {
        this.usuario = usuario;
        this.carro = carro;
        this.fechaCompra = fechaCompra;
>>>>>>> Adrian-Arbizu
        this.total = total;
    }

    public int getCompraId() {
        return compraId;
    }

    public void setCompraId(int compraId) {
        this.compraId = compraId;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCarro() {
        return carro;
    }

    public void setCarro(String carro) {
        this.carro = carro;
    }

<<<<<<< HEAD
    public String getFechacompra() {
        return fechacompra;
    }

    public void setFechacompra(String fechacompra) {
        this.fechacompra = fechacompra;
=======
    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechacompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
>>>>>>> Adrian-Arbizu
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Compras{" + "compraId=" + compraId + ", usuario=" + usuario + ", carro=" + carro + ", fechacompra=" + fechaCompra + ", total=" + total + '}';
    }
}
