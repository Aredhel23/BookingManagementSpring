package it.ariadne.bookingManagementSpring.utils;


import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class TableResponse<T> {
	int responseCode;
	
	Iterable<T> data;
	
	public Iterable<T> getData() {
		return data;
	}
	
	
	public int getResponseCode() {
		return responseCode;
	}


	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}


	public void setData(Iterable<T> data) {
		this.data = data;
	}
	
}
