/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author abdulmac
 */
public class Tour {
    private int tourId;
        private String tourName;
    private String location;
    private String price;

    
    public Tour(int tourId, String tourName, String location, String price) {
        this.tourId = tourId;
                this.tourName = tourName;
        this.location = location;
        this.price = price;
    }


}
