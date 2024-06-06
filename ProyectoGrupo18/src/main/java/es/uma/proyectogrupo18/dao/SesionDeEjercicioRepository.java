package es.uma.proyectogrupo18.dao;

import es.uma.proyectogrupo18.entity.EjercicioEntity;
import es.uma.proyectogrupo18.entity.SesionDeEjercicioEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SesionDeEjercicioRepository extends JpaRepository<SesionDeEjercicioEntity, Integer> {
    @Query("select s from SesionDeEjercicioEntity s where s.ejercicioId = :ejercicio")
    public List<SesionDeEjercicioEntity> findSesionesByEjercicioId(@Param("ejercicio")int ejercicio);
}
