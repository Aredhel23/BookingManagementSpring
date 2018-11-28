package it.ariadne.bookingManagementSpring.entity.impl;



import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import it.ariadne.bookingManagementSpring.entity.Resource;

@Entity
@Table(name = "RESOURCE")
public class Projector implements Resource {
	private static final long serialVersionUID = 1L;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "Type", length = 64, nullable = false)
    private String type;
	
	@Column(name = "colors", length = 64, nullable = false)
	private int colors;
	
	@Column(name = "name", length = 64, nullable = false)
	private String name;
	
	@Override
	public String getType() {
		
		return type;
	}
	@Override
	public String setType(String type) {
		this.type = type;
		return type;
	}

	@Override
	public int getLimit() {
		// TODO Auto-generated method stub
		return colors;
	}

	@Override
	public String bookingPrintList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int setLimit(int lim) {
		if (lim == this.colors)
			return 1;
		else {
			this.colors = lim;
			return 0;
		}
	}
	@Override
	public void setId(Long id) {
		this.id = id;		
	}
	@Override
	public Long getId() {
		return id;
	}
	@Override
	public String getName() {
		return name;
	}
	@Override
	public String setName(String name) {
		this.name = name;
		return name;
	}

}
