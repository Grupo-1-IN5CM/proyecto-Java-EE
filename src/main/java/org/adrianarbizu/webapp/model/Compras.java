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
    private int usuarioId;
    private int carroId;
    private String fechacompra;
    private Double total;
    
    public Compras() {
    }

    public Compras(int compraId, int usuarioId, int carroId, String fechacompra, Double total) {
        this.compraId = compraId;
        this.usuarioId = usuarioId;
        this.carroId = carroId;
        this.fechacompra = fechacompra;
        this.total = total;
    }

    public Compras(int usuarioId, int carroId, String fechacompra, Double total) {
        this.usuarioId = usuarioId;
        this.carroId = carroId;
        this.fechacompra = fechacompra;
        this.total = total;
    }

    public int getCompraId() {
        return compraId;
    }

    public void setCompraId(int compraId) {
        this.compraId = compraId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public int getCarroId() {
        return carroId;
    }

    public void setCarroId(int carroId) {
        this.carroId = carroId;
    }

    public String getFechacompra() {
        return fechacompra;
    }

    public void setFechacompra(String fechacompra) {
        this.fechacompra = fechacompra;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Compras{" + "compraId=" + compraId + ", usuarioId=" + usuarioId + ", carroId=" + carroId + ", fechacompra=" + fechacompra + ", total=" + total + '}';
    }
}
