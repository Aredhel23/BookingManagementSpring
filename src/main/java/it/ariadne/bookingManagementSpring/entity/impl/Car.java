package it.ariadne.bookingManagementSpring.entity.impl;

import javax.persistence.Entity;
import javax.persistence.Table;

import it.ariadne.bookingManagementSpring.entity.Resource;

@Entity
@Table(name="RESOURCE")
public class Car extends Resource {
	private String type = super.setType("Macchina");
	@Override
	public String getType() {
		
		return type;
	}
	@Override
	public String setType(String type) {
				return "Azione non permessa";
	}
	
	

}
