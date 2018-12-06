package it.ariadne.bookingManagementSpring.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="BOOKINGS")
public class Bookings {
	
	@Id
    @GeneratedValue
    @Column(name = "Id", nullable = false)
    private Long id;
 
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Resource_Id", nullable = false)
    private Resource resource;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "User_Id", nullable = false)
    private AppUser appUser;

    @Column(name = "startDate")
    @Temporal(TemporalType.TIMESTAMP)    
    private Date startDate;
    
    
    @Column(name = "endDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;


	public Long getId() {
		return id;
	}


	public Resource getResource() {
		return resource;
	}


	public AppUser getAppUser() {
		return appUser;
	}


	public Date getStartDate() {
		return startDate;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public void setResource(Resource resource) {
		this.resource = resource;
	}


	public void setAppUser(AppUser appUser) {
		this.appUser = appUser;
	}


	public void setStartDate(Date startDate) throws ParseException {
		
		this.startDate = startDate;
	}


	public void setEndDate(Date endDate) throws ParseException {
		
		this.endDate = endDate;
	}
    
    
}
