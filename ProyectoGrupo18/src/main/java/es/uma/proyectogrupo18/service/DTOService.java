/*
 * 
 *  Alvaro Morales Perujo -> 100%
 * 
 */

package es.uma.proyectogrupo18.service;

import es.uma.proyectogrupo18.dto.DTO;

import java.util.ArrayList;
import java.util.List;

public abstract class DTOService<DTOClass, EntityClass> {

    protected List<DTOClass> entidadesADTO (List<EntityClass> entidades) {
        List<DTOClass> lista = new ArrayList<>();
        for (EntityClass entidad : entidades) {
            DTO<DTOClass> clase = (DTO<DTOClass>) entidad;
            lista.add(clase.toDTO());
        }
        return lista;
    }


}