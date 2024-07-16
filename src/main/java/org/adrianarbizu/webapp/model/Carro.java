package org.adrianarbizu.webapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table(name = "Carros")
@Entity

public class Carro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int carroId;
    private String nombreCarro;
    private String descripcionCarro;
    private String marcaCarro;
    private Double Precio;

    public Carro() {

    }

    public Carro(int carroId, String nombreCarro, String descripcionCarro, String marcaCarro, Double Precio) {
        this.carroId = carroId;
        this.nombreCarro = nombreCarro;
        this.descripcionCarro = descripcionCarro;
        this.marcaCarro = marcaCarro;
        this.Precio = Precio;
    }

    public Carro(String nombreCarro, String descripcionCarro, String marcaCarro, Double Precio) {
        this.nombreCarro = nombreCarro;
        this.descripcionCarro = descripcionCarro;
        this.marcaCarro = marcaCarro;
        this.Precio = Precio;
    }

    public int getCarroId() {
        return carroId;
    }

    public void setCarroId(int carroId) {
        this.carroId = carroId;
    }

    public String getNombreCarro() {
        return nombreCarro;
    }

    public void setNombreCarro(String nombreCarro) {
        this.nombreCarro = nombreCarro;
    }

    public String getDescripcionCarro() {
        return descripcionCarro;
    }

    public void setDescripcionCarro(String descripcionCarro) {
        this.descripcionCarro = descripcionCarro;
    }

    public String getMarcaCarro() {
        return marcaCarro;
    }

    public void setMarcaCarro(String marcaCarro) {
        this.marcaCarro = marcaCarro;
    }

    public Double getPrecio() {
        return Precio;
    }

    public void setPrecio(Double Precio) {
        this.Precio = Precio;
    }

    @Override
    public String toString() {
        return "Carro{" + "carroId=" + carroId + ", nombreCarro=" + nombreCarro + ", descripcionCarro=" + descripcionCarro + ", marcaCarro=" + marcaCarro + ", Precio=" + Precio + '}';
    }
}
