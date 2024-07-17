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
    private String usuario;
    private String carro;
    private Date fechaCompra;
    private Double total;
    
    public Compras() {
    }

    public Compras(int compraId, String usuario, String carro, Date fechaCompra, Double total) {
        this.compraId = compraId;
        this.usuario = usuario;
        this.carro = carro;
        this.fechaCompra = fechaCompra;
        this.total = total;
    }

    public Compras(String usuario, String carro, Date fechaCompra, Double total) {
        this.usuario = usuario;
        this.carro = carro;
        this.fechaCompra = fechaCompra;
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

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechacompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
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
