package it.ariadne.bookingManagementSpring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.bookingManagementSpring.entity.impl.Projector;

@Repository
public interface ResourseDAO extends CrudRepository<Projector, Long>{
    public List<Projector> findByTypeLike(String name);
    public List<Projector> findByNameLike(String name);

 

}
