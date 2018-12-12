package it.ariadne.bookingManagementSpring.printer;

import java.util.Date;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;

import it.ariadne.bookingManagementSpring.dao.BookingsDAO;

public class BookPrinter {
	private String name;	
	private long resourceId;
	private long id;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	private String resourceName;
	private int resourceLim;
	private Date start;
	private Date end;
	private String user;
	public String getName() {
		return name;
	}
	public long getResourceId() {
		return resourceId;
	}
	public String getResourceName() {
		return resourceName;
	}
	public int getResourceLim() {
		return resourceLim;
	}
	public Date getStart() {
		return start;
	}
	public Date getEnd() {
		return end;
	}
	public String getUser() {
		return user;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setResourceId(long resourceId) {
		this.resourceId = resourceId;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public void setResourceLim(int resourceLim) {
		this.resourceLim = resourceLim;
	}
	public void setStart(Date date) {
		this.start = date;
	}
	public void setEnd(Date date) {
		this.end = date;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
	

}
