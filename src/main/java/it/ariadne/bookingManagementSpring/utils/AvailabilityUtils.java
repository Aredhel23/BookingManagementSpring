package it.ariadne.bookingManagementSpring.utils;

import org.joda.time.DateTime;
import org.joda.time.Interval;


import it.ariadne.bookingManagementSpring.entity.Bookings;


public class AvailabilityUtils {
	/***
	 * It finds the first dateTime when the resource is available for the selected period
	 * @param r resource you want to book.
	 * @param start start date.
	 * @param end end date.
	 * @return true if it is available, false if the resource is busy.
	 */
	public boolean bookingRequest(Iterable<Bookings> bookings , DateTime start, DateTime end) {
		Interval interval = new Interval(start, end);
		 
		for (Bookings i:bookings) {
			DateTime d1 = new DateTime(i.getStartDate());
			DateTime d2 = new DateTime(i.getEndDate());
			Interval bookInt = new Interval(d1, d2);
			if(bookInt.overlaps(interval)) {
				return false;
			}
		}
		return true;		 
	}
}
