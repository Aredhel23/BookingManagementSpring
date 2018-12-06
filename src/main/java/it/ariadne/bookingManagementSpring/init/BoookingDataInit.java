package it.ariadne.bookingManagementSpring.init;

import java.util.Date;
import java.util.Optional;

import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import it.ariadne.bookingManagementSpring.dao.AppUserDAO;
import it.ariadne.bookingManagementSpring.dao.BookingsDAO;
import it.ariadne.bookingManagementSpring.dao.ResourceDAO;
import it.ariadne.bookingManagementSpring.entity.AppUser;
import it.ariadne.bookingManagementSpring.entity.Bookings;
import it.ariadne.bookingManagementSpring.entity.Resource;

@Component
public class BoookingDataInit implements ApplicationRunner {

	private BookingsDAO bookingsDao;
	private AppUserDAO app;
	private ResourceDAO resourceDAO;
	private static final DateTimeFormatter df =  DateTimeFormat.forPattern("yyyy/MM/dd HH:mm");
	
	
	@Autowired
    public BoookingDataInit(BookingsDAO bookingsDao, AppUserDAO app, ResourceDAO resourceDAO) {
        this.bookingsDao = bookingsDao;
        this.app = app;
        this.resourceDAO = resourceDAO;
    }
	@Override
	public void run(ApplicationArguments args) throws Exception {
		long count = bookingsDao.count();
		 
        if (count == 0) {
        	Bookings b1 = new Bookings();
        	DateTime d = new DateTime(2018, 05, 18, 9, 00);
        	String data = d.toString(df);
        	DateTime startDate = df.parseDateTime(data);
        	b1.setStartDate(startDate.toDate());
        	DateTime d2 = new DateTime(2018, 05, 18, 11, 00);
        	String data2 = d2.toString(df);
        	DateTime endDate = df.parseDateTime(data2);
        	b1.setEndDate(endDate.toDate());
       
        	AppUser user = app.findUserAccount("dbuser1");
        	b1.setAppUser(user);
        	Optional<Resource> r = resourceDAO.findById((long) 15);
        	b1.setName("ciao");
        	b1.setResource(r.get());
        	bookingsDao.save(b1);
        }
	
	}
}
