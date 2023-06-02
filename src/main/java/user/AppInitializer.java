/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

/**
 *
 * @author abdulmac
 */
import controller.Admin;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import java.util.List;
import model.Tour;

//@WebListener
public class AppInitializer implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // This method will be called when the web application is being initialized
        ServletContext servletContext = sce.getServletContext();

        Admin admin = new Admin();
        List<Tour> tours = admin.getAllTours();

        // Store the tours data in the ServletContext
        servletContext.setAttribute("tours", tours);

        // Perform your other initialization tasks here
        // For example, you can load configuration, establish database connections, etc.
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // This method will be called when the web application is being destroyed
        // Perform any cleanup tasks here

    }
}
