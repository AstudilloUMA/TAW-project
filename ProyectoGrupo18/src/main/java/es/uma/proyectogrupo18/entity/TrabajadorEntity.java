package es.uma.proyectogrupo18.entity;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "trabajador", schema = "taw", catalog = "")
public class TrabajadorEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "Usuario_id")
    private int usuarioId;
    @Basic
    @Column(name = "Rol")
    private String rol;
    @Basic
    @Column(name = "Rol_Id", insertable = false, updatable = false)
    private Integer rolId;
    @OneToMany(mappedBy = "trabajadorByTrabajadorId")
    private Collection<DietaEntity> dietasByUsuarioId;
    @OneToMany(mappedBy = "trabajadorByTrabajadorId")
    private Collection<RutinaSemanalEntity> rutinaSemanalsByUsuarioId;
    @OneToMany(mappedBy = "trabajadorByTrabajadorId")
    private Collection<SesionDeEntrenamientoEntity> sesionDeEntrenamientosByUsuarioId;
    @OneToOne
    @JoinColumn(name = "Usuario_id", referencedColumnName = "Id", nullable = false)
    private UsuarioEntity usuarioByUsuarioId;
    @ManyToOne
    @JoinColumn(name = "Rol_Id", referencedColumnName = "Id", insertable = false, updatable = false)
    private RolTrabajadorEntity rolTrabajadorByRolId;
    @OneToMany(mappedBy = "trabajadorByTrabajadorId")
    private Collection<FeedbackEntity> feedbacksByUsuarioId;

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TrabajadorEntity that = (TrabajadorEntity) o;

        if (usuarioId != that.usuarioId) return false;
        if (rol != null ? !rol.equals(that.rol) : that.rol != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = usuarioId;
        result = 31 * result + (rol != null ? rol.hashCode() : 0);
        return result;
    }

    public Integer getRolId() {
        return rolId;
    }

    public void setRolId(Integer rolId) {
        this.rolId = rolId;
    }

    public Collection<DietaEntity> getDietasByUsuarioId() {
        return dietasByUsuarioId;
    }

    public void setDietasByUsuarioId(Collection<DietaEntity> dietasByUsuarioId) {
        this.dietasByUsuarioId = dietasByUsuarioId;
    }

    public Collection<RutinaSemanalEntity> getRutinaSemanalsByUsuarioId() {
        return rutinaSemanalsByUsuarioId;
    }

    public void setRutinaSemanalsByUsuarioId(Collection<RutinaSemanalEntity> rutinaSemanalsByUsuarioId) {
        this.rutinaSemanalsByUsuarioId = rutinaSemanalsByUsuarioId;
    }

    public Collection<SesionDeEntrenamientoEntity> getSesionDeEntrenamientosByUsuarioId() {
        return sesionDeEntrenamientosByUsuarioId;
    }

    public void setSesionDeEntrenamientosByUsuarioId(Collection<SesionDeEntrenamientoEntity> sesionDeEntrenamientosByUsuarioId) {
        this.sesionDeEntrenamientosByUsuarioId = sesionDeEntrenamientosByUsuarioId;
    }

    public UsuarioEntity getUsuarioByUsuarioId() {
        return usuarioByUsuarioId;
    }

    public void setUsuarioByUsuarioId(UsuarioEntity usuarioByUsuarioId) {
        this.usuarioByUsuarioId = usuarioByUsuarioId;
    }

    public RolTrabajadorEntity getRolTrabajadorByRolId() {
        return rolTrabajadorByRolId;
    }

    public void setRolTrabajadorByRolId(RolTrabajadorEntity rolTrabajadorByRolId) {
        this.rolTrabajadorByRolId = rolTrabajadorByRolId;
    }

    public Collection<FeedbackEntity> getFeedbacksByUsuarioId() {
        return feedbacksByUsuarioId;
    }

    public void setFeedbacksByUsuarioId(Collection<FeedbackEntity> feedbacksByUsuarioId) {
        this.feedbacksByUsuarioId = feedbacksByUsuarioId;
    }
}
