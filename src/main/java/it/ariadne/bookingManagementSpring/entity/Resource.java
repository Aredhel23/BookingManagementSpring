package it.ariadne.bookingManagementSpring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="RESOURCE")
public class Resource {
	private static final long serialVersionUID = 1L;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "Type", length = 64, nullable = false)
    private String type;
	
	@Column(name = "limes", length = 64, nullable = false)
	private int lim;
	
	@Column(name = "name", length = 64, nullable = false)
	private String name;

	public Long getId() {
		return id;
	}

	public String getType() {
		return type;
	}

	public int getLim() {
		return lim;
	}

	public String getName() {
		return name;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String setType(String type) {
		return this.type = type;
	}

	public void setLim(int lim) {
		this.lim = lim;
	}

	public void setName(String name) {
		this.name = name;
	}
	

}
