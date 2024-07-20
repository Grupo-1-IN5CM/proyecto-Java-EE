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

@Table(name = "Marcas")
@Entity
public class Marcas {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int marcaId;
    private String nombreMarca;
    private String descripcionMarca;
    
    public Marcas() {
    }

    public Marcas(int marcaId, String nombreMarca, String descripcionMarca) {
        this.marcaId = marcaId;
        this.nombreMarca = nombreMarca;
        this.descripcionMarca = descripcionMarca;
    }

    public Marcas(String nombreMarca, String descripcionMarca) {
        this.nombreMarca = nombreMarca;
        this.descripcionMarca = descripcionMarca;
    }

    public int getMarcaId() {
        return marcaId;
    }

    public void setMarcaId(int marcaId) {
        this.marcaId = marcaId;
    }

    public String getNombreMarca() {
        return nombreMarca;
    }

    public void setNombreMarca(String nombreMarca) {
        this.nombreMarca = nombreMarca;
    }

    public String getDescripcionMarca() {
        return descripcionMarca;
    }

    public void setDescripcionMarca(String descripcionMarca) {
        this.descripcionMarca = descripcionMarca;
    }

    @Override
    public String toString() {
        return "Marcas{" + "marcaId=" + marcaId + ", nombreMarca=" + nombreMarca + ", descripcionMarca=" + descripcionMarca + '}';
    } 
}
