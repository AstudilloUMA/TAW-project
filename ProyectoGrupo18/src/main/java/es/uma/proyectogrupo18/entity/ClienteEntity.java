package es.uma.proyectogrupo18.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "cliente", schema = "taw", catalog = "")
public class ClienteEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "UsuarioId")
    private int usuarioId;
    @Basic
    @Column(name = "Peso")
    private BigDecimal peso;
    @Basic
    @Column(name = "Altura")
    private BigDecimal altura;
    @Basic
    @Column(name = "Edad")
    private Integer edad;

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public BigDecimal getPeso() {
        return peso;
    }

    public void setPeso(BigDecimal peso) {
        this.peso = peso;
    }

    public BigDecimal getAltura() {
        return altura;
    }

    public void setAltura(BigDecimal altura) {
        this.altura = altura;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ClienteEntity that = (ClienteEntity) o;

        if (usuarioId != that.usuarioId) return false;
        if (peso != null ? !peso.equals(that.peso) : that.peso != null) return false;
        if (altura != null ? !altura.equals(that.altura) : that.altura != null) return false;
        if (edad != null ? !edad.equals(that.edad) : that.edad != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = usuarioId;
        result = 31 * result + (peso != null ? peso.hashCode() : 0);
        result = 31 * result + (altura != null ? altura.hashCode() : 0);
        result = 31 * result + (edad != null ? edad.hashCode() : 0);
        return result;
    }
}