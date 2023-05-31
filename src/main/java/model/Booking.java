/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author abdulmac
 */
public class Booking {

    private int customerId;
    private int tourId;
    private String customerName;
    private String customerEmail;
    private String tourName;
    private String location;
    private String price;
    private String dateTime;

    public Booking(int customerId, int tourId, String customerName, String tourName,
            String location, String price, String dateTime, String customerEmail) {
        this.customerId = customerId;
        this.tourId = tourId;
        this.customerName = customerName;
        this.tourName = tourName;
        this.location = location;
        this.price = price;
        this.dateTime = dateTime;
        this.customerEmail = customerEmail;
    }
    
    public Booking(int customerId, int tourId, String customerName, String tourName,
            String location, String price, String dateTime) {
        this.customerId = customerId;
        this.tourId = tourId;
        this.customerName = customerName;
        this.tourName = tourName;
        this.location = location;
        this.price = price;
        this.dateTime = dateTime;
    }

    public Booking(int customerId, int tourId, String dateTime) {
        this.customerId = customerId;
        this.tourId = tourId;
        this.dateTime = dateTime;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public int getCustomerId() {
        return customerId;
    }

    public int getTourId() {
        return tourId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public String getTourName() {
        return tourName;
    }

    public String getLocation() {
        return location;
    }

    public String getPrice() {
        return price;
    }

    public String getDateTime() {
        return dateTime;
    }

}
