package es.uma.proyectogrupo18.entity;

import es.uma.proyectogrupo18.dto.DTO;
import es.uma.proyectogrupo18.dto.Ejercicio;
import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "ejercicio")
public class EjercicioEntity implements Serializable, DTO<Ejercicio> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "Tipo_Id")
    private TipoEjercicioEntity tipo;

    @Column(name = "Nombre")
    private String nombre;

    @Lob
    @Column(name = "Video")
    private String video;

    @OneToMany(mappedBy = "ejercicio")
    private List<SesionDeEjercicioEntity> sesionDeEjercicios = new ArrayList<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public TipoEjercicioEntity getTipo() {
        return tipo;
    }

    public void setTipo(TipoEjercicioEntity tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public List<SesionDeEjercicioEntity> getSesionDeEjercicios() {
        return sesionDeEjercicios;
    }

    public void setSesionDeEjercicios(List<SesionDeEjercicioEntity> sesionDeEjercicios) {
        this.sesionDeEjercicios = sesionDeEjercicios;
    }

    public Ejercicio toDTO(){
        Ejercicio ejercicio = new Ejercicio();
        ejercicio.setId(this.id);
        ejercicio.setNombre(this.nombre);
        ejercicio.setVideo(this.video);
        ejercicio.setTipo(this.tipo.toDTO());
        List<Integer> sesiones = new ArrayList<>();
        for(SesionDeEjercicioEntity sesion : this.sesionDeEjercicios){
            sesiones.add(sesion.getId());
        }
        ejercicio.setSesionDeEjercicios(sesiones);
        return ejercicio;
    }
}