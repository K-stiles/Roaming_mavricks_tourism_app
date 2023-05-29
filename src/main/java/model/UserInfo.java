/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author abdulmac
 */
public class UserInfo {
    private int customerId;
    private String name;
    private String address;
    private String email;

    public UserInfo(int customerId, String name, String address, String email) {
        this.customerId = customerId;
        this.name = name;
        this.address = address;
        this.email = email;
    }

    public int getCustomerId() {
        return customerId;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }
}
