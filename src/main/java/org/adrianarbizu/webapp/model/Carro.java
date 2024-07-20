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
    private int marcaId;
    private int categoriaId;
    private Double precioCarro;

    public Carro() {

    }

    public Carro(int carroId, String nombreCarro, String descripcionCarro, int marcaId, int categoriaId, Double precioCarro) {
        this.carroId = carroId;
        this.nombreCarro = nombreCarro;
        this.descripcionCarro = descripcionCarro;
        this.marcaId = marcaId;
        this.categoriaId = categoriaId;
        this.precioCarro = precioCarro;
    }

    public Carro(String nombreCarro, String descripcionCarro, int marcaId, int categoriaId, Double precioCarro) {
        this.nombreCarro = nombreCarro;
        this.descripcionCarro = descripcionCarro;
        this.marcaId = marcaId;
        this.categoriaId = categoriaId;
        this.precioCarro = precioCarro;
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

    public int getMarcaId() {
        return marcaId;
    }

    public void setMarcaId(int marcaId) {
        this.marcaId = marcaId;
    }

    public int getCategoriaId() {
        return categoriaId;
    }

    public void setCategoriaId(int categoriaId) {
        this.categoriaId = categoriaId;
    }

    public Double getPrecioCarro() {
        return precioCarro;
    }

    public void setPrecioCarro(Double precioCarro) {
        this.precioCarro = precioCarro;
    }

    @Override
    public String toString() {
        return "Carro{" + "carroId=" + carroId + ", nombreCarro=" + nombreCarro + ", descripcionCarro=" + descripcionCarro + ", marcaId=" + marcaId + ", categoriaId=" + categoriaId + ", precioCarro=" + precioCarro + '}';
    }
}
