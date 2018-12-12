package it.ariadne.bookingManagementSpring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.bookingManagementSpring.entity.AppUser;
import it.ariadne.bookingManagementSpring.entity.Bookings;
import it.ariadne.bookingManagementSpring.entity.Resource;

@Repository
public interface BookingsDAO extends CrudRepository<Bookings, Long>{
	 public List<Bookings> findByAppUser(AppUser app);
	 public List<Bookings> findByResource(Resource r);
}
