package it.ariadne.bookingManagementSpring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.bookingManagementSpring.entity.Bookings;

@Repository
public interface BookingsDAO extends CrudRepository<Bookings, Long>{

}
