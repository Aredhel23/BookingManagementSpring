package it.ariadne.bookingManagementSpring.utils;

import org.joda.time.DateTime;
import org.joda.time.Interval;
import org.joda.time.Period;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.ui.Model;

import it.ariadne.bookingManagementSpring.entity.Bookings;

public class AvailabilityUtils {
	/***
	 * It finds the first dateTime when the resource is available for the selected
	 * period
	 * 
	 * @param r     resource you want to book.
	 * @param start start date.
	 * @param end   end date.
	 * @return true if it is available, false if the resource is busy.
	 */
	public boolean bookingRequest(Iterable<Bookings> bookings, DateTime start, DateTime end) {
		Interval interval = new Interval(start, end);

		for (Bookings i : bookings) {
			DateTime d1 = new DateTime(i.getStartDate());
			DateTime d2 = new DateTime(i.getEndDate());
			Interval bookInt = new Interval(d1, d2);
			if (bookInt.overlaps(interval)) {
				return false;
			}
		}
		return true;
	}

	public String firstAvailability(Model model, Iterable<Bookings> book, DateTime dStart, DateTime dEnd, Period p) {
		boolean ret = true;
		Period defPeriod = new Period().withHours(1);
		DateTime start1 = dStart;
		while (ret) {
			DateTime end1 = start1.plus(p);
			if (end1.isBefore(dEnd)) {
				if (bookingRequest(book, start1, end1)) {
					DateTimeFormatter df1 = DateTimeFormat.forPattern("dd-MM-yyyy HH:mm");
					String mess = "Risorsa Disponibile dal " + start1.toString(df1);
					model.addAttribute("messav", mess);
					return "richiesteutente";
				}
				ret = !bookingRequest(book, start1, end1);
				start1 = start1.plus(defPeriod);
			} else {
				String error = "Nessuna disponibilità trovata";
				model.addAttribute("errorav", error);
				return "richiesteutente";
			}
		}
		return "richiesteutente";
	}
}
