package it.ariadne.bookingManagementSpring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.bookingManagementSpring.entity.Resource;



@Repository
public interface ResourceDAO extends CrudRepository<Resource, Long>{
    public List<Resource> findByTypeLike(String name);
    public List<Resource> findByNameLike(String name);

 

}
