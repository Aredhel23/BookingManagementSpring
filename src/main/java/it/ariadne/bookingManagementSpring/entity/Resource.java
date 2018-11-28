package it.ariadne.bookingManagementSpring.entity;

public interface Resource {
	void setId(Long id);

	  Long getId();

	/***
	 * it gets the type of the resource.
	 * @return the type of the resource.
	 */
	public String getType();
	/***
	 * it gets the limit of the resource.
	 * @return gets the limit of the resource.
	 */
	public int getLimit();
	/***
	 * it prints the list of all the bookings of the resource. 
	 * @return the String of all the bookings of the resource. 
	 */
	public String bookingPrintList();
	public String setType(String type);
	public String getName();
	public String setName(String name);	
	public int setLimit(int lim);

}
