package it.ariadne.bookingManagementSpring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan(basePackages= {"it.ariadne.bookingManagementSpring.controller"})
@SpringBootApplication
public class BookingManagementSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(BookingManagementSpringApplication.class, args);
	}
}
