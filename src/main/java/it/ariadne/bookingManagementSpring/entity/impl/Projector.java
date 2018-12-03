package it.ariadne.bookingManagementSpring.entity.impl;

import javax.persistence.Entity;
import javax.persistence.Table;

import it.ariadne.bookingManagementSpring.entity.Resource;

@Entity
@Table(name="RESOURCE")
public class Projector extends Resource {
	private String type = super.setType("Proiettore");
	@Override
	public String getType() {
		
		return type;
	}
	@Override
	public String setType(String type) {
				return "Azione non permessa";
	}
}
