package it.ariadne.bookingManagementSpring.init;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import it.ariadne.bookingManagementSpring.dao.ResourseDAO;
import it.ariadne.bookingManagementSpring.entity.Resource;
import it.ariadne.bookingManagementSpring.entity.impl.Projector;


@Component
public class DataInit implements ApplicationRunner {
 
    private ResourseDAO resourceDAO;
 
    private static final DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
 
    @Autowired
    public DataInit(ResourseDAO resourceDAO) {
        this.resourceDAO = resourceDAO;
    }
 
    @Override
    public void run(ApplicationArguments args) throws Exception {
        long count = resourceDAO.count();
 
        if (count == 0) {
            Projector p1 = new Projector();
 
            p1.setName("num1");
            p1.setType("Projector");
            p1.setLimit(256);
            
            Projector p2 = new Projector();
            
            p2.setName("num2");
            p2.setType("Projector");
            p2.setLimit(256);
 
            
            
 
            resourceDAO.save(p1);
            resourceDAO.save(p2);
        }
 
    }
     
}