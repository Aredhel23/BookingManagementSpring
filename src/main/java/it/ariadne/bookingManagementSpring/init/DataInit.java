package it.ariadne.bookingManagementSpring.init;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import it.ariadne.bookingManagementSpring.dao.ResourceDAO;
import it.ariadne.bookingManagementSpring.entity.Resource;
import it.ariadne.bookingManagementSpring.entity.impl.Car;
import it.ariadne.bookingManagementSpring.entity.impl.Projector;



@Component
public class DataInit implements ApplicationRunner {
 
    private ResourceDAO resourceDAO;

 
    private static final DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
 
    @Autowired
    public DataInit(ResourceDAO resourceDAO) {
        this.resourceDAO = resourceDAO;
    }
 
    @Override
    public void run(ApplicationArguments args) throws Exception {
        long count = resourceDAO.count();
 
        if (count == 0) {
            Resource p1 = new Projector();
 
            p1.setName("num1");
            p1.setLim(256);
            
            Resource p2 = new Projector();
            
            p2.setName("num2");
            p2.setLim(256);
 
            Resource c1 = new Car();
            c1.setName("Porche Cayenne");
         
            c1.setLim(5);
            
 
            resourceDAO.save(p1);
            resourceDAO.save(p2);
            resourceDAO.save(c1);
            
        }
 
    }
     
}