/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;
import model.*;

public class Admin {

    dbConn dbObject = new dbConn();
    Connection conn = dbObject.connect();
    PreparedStatement pStmt = null;
    ResultSet resultSet = null;
    String sql = null;

    public int loginController(String email, String password, String role) {
        try {

            // Prepare the SQL statement to validate login
            if (role.equals("tour_guide")) {
                sql = "SELECT * FROM tour_guides WHERE email = ? AND password = ?";
            } else {
                sql = "SELECT * FROM customers WHERE email = ? AND password = ?";
            }
            pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, email);
            pStmt.setString(2, password);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Check if a matching user is found and return the customer ID
            if (resultSet.next()) {
                if (role.equals("tour_guide")) {
                    return resultSet.getInt("tour_guide_id");
                } else {
                    return resultSet.getInt("customer_id");
                }
            }

        } catch (SQLException e) {
//            throw new Error(e);
            throw new Error(e);

        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
//                throw new Error(e);
                throw new Error(e);

            }
        }

        return -1; // Return -1 if login validation fails
    }

    public int registerCustomer(String name, String address, String email, String password) {
        try {

            // Prepare the SQL statement to insert a new user
            sql = "INSERT INTO customers (name, address, email, password) VALUES (?, ?, ?, ?)";
            pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, name);
            pStmt.setString(2, address);
            pStmt.setString(3, email);
            pStmt.setString(4, password);

            // Execute the query
            int rowsAffected = pStmt.executeUpdate();

            // Check if the user was successfully created
            if (rowsAffected > 0) {
                // Retrieve the generated ID
                resultSet = pStmt.getGeneratedKeys();
                if (resultSet.next()) {
                    return resultSet.getInt(1);
                }
            }

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

        return -1; // Return -1 if user creation fails
    }

    public int UserExists(String email) {
        try {

            // Prepare the SQL statement to validate login
            sql = "SELECT * FROM customers WHERE email = ?";
            pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, email);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Check if a matching user is found and return the customer ID
            if (resultSet.next()) {
                return resultSet.getInt("customer_id");
            }

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

        return -1; // Return -1 if login validation fails
    }

    public List<Booking> getAllBookings() {

        List<Booking> bookings = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM tourism_db.customers\n"
                    + "JOIN tourism_db.bookings ON customers.customer_id = bookings.customer_id\n"
                    + "JOIN tourism_db.tours ON bookings.tour_id = tours.tour_id ;";
            pStmt = conn.prepareStatement(sql);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                int tourId = resultSet.getInt("tour_id");
                String customerName = resultSet.getString("customers.name");
                String tourName = resultSet.getString("tours.name");
                String location = resultSet.getString("location");
                String price = resultSet.getString("price");
                String dateTime = resultSet.getString("date");
                String email = resultSet.getString("email");

                Booking booking = new Booking(customerId, tourId, customerName, tourName,
                        location, price, dateTime, email);
                bookings.add(booking);
            }

            return bookings;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return bookings;
    }

    public List<Tour> getAllTours() {

        List<Tour> tours = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM tourism_db.tours;";
            pStmt = conn.prepareStatement(sql);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int tourId = resultSet.getInt("tour_id");
                String name = resultSet.getString("name");
                String location = resultSet.getString("location");
                String price = resultSet.getString("price");
                String imgUrl = resultSet.getString("img_url");

                Tour tour = new Tour(tourId, name, location, price, imgUrl);
                tours.add(tour);
            }

            return tours;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return tours;
    }

    public List<UserInfo> getAllCustomerDetails() {

        List<UserInfo> userInfos = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM customers";
            pStmt = conn.prepareStatement(sql);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");

                UserInfo userInfo = new UserInfo(customerId, name, address, email);
                userInfos.add(userInfo);
            }

            return userInfos;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return userInfos;
    }

    public List<UserInfo> getCustomerDetails(int id) {

        List<UserInfo> userInfos = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM customers WHERE customer_id = ?";
            pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, id);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");

                UserInfo userInfo = new UserInfo(customerId, name, address, email);
                userInfos.add(userInfo);
            }

            return userInfos;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return userInfos;
    }

    public List<UserInfo> getAdminDetails(int id) {

        List<UserInfo> userInfos = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM tour_guides WHERE tour_guide_id = ?";
            pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, id);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int tour_guide_id = resultSet.getInt("tour_guide_id");
                String name = resultSet.getString("name");
//                String address = resultSet.getString("address");
                String email = resultSet.getString("email");

                UserInfo userInfo = new UserInfo(tour_guide_id, name, email);
                userInfos.add(userInfo);
            }

            return userInfos;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return userInfos;
    }

    public int bookings(int tour_id, int cust_id) {
        try {
            // Prepare the SQL statement to insert a new booking
            sql = "INSERT INTO bookings (tour_id, customer_id) VALUES (?, ?)";
            pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, tour_id);
            pStmt.setInt(2, cust_id);

            // Execute the query
            int rowsAffected = pStmt.executeUpdate();

            // Check if the booking was successfully created
            if (rowsAffected > 0) {
                return cust_id;
            }
        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

        return -1; // Return -1 if booking creation fails
    }

    public int newTour(String tourName, String location, String price, String imgUrl) {
        try {
            // Prepare the SQL statement to insert a new booking
            sql = "INSERT INTO tours (name, location, price, img_url) VALUES (?, ?, ?, ?)";
            pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, tourName);
            pStmt.setString(2, location);
            pStmt.setString(3, price);
            pStmt.setString(4, imgUrl);

            // Execute the query
            int rowsAffected = pStmt.executeUpdate();

            // Check if the user was successfully created
            if (rowsAffected > 0) {
                // Retrieve the generated ID
               return rowsAffected;
            }
        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

        return -1; // Return -1 if booking creation fails
    }

    public List<Booking> getBookings(int tour_id, int cust_id) {

        List<Booking> bookings = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM bookings WHERE customer_id = ? AND tour_id = ?";
            pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, cust_id);
            pStmt.setInt(2, tour_id);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                int t_id = resultSet.getInt("tour_id");
                String date = resultSet.getString("date");

                Booking booking = new Booking(customerId, t_id, date);
                bookings.add(booking);
            }

            return bookings;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return userInfos;
    }

    public List<Tour> getUserTours(int cust_id) {

        List<Tour> tours = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM bookings \n"
                    + "JOIN tourism_db.tours ON tours.tour_id = bookings.tour_id\n"
                    + "WHERE customer_id = ?";
            pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, cust_id);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int tourId = resultSet.getInt("tour_id");
                String name = resultSet.getString("name");
                String location = resultSet.getString("location");
                String price = resultSet.getString("price");
                String imgUrl = resultSet.getString("img_url");

                Tour tour = new Tour(tourId, name, location, price, imgUrl);
                tours.add(tour);
            }

            return tours;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return userInfos;
    }

    public List<Booking> getBookings(int cust_id) {

        List<Booking> bookings = new ArrayList<>();

        try {
            // Prepare the SQL statement to retrieve user information
            sql = "SELECT * FROM tourism_db.customers\n"
                    + "JOIN tourism_db.bookings ON customers.customer_id = bookings.customer_id\n"
                    + "JOIN tourism_db.tours ON bookings.tour_id = tours.tour_id "
                    + "WHERE customers.customer_id = ?;";
            pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, cust_id);

            // Execute the query
            resultSet = pStmt.executeQuery();

            // Process the result set and create UserInfo objects
            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                int tourId = resultSet.getInt("tour_id");
                String customerName = resultSet.getString("customers.name");
                String tourName = resultSet.getString("tours.name");
                String location = resultSet.getString("location");
                String price = resultSet.getString("price");
                String dateTime = resultSet.getString("date");

                Booking booking = new Booking(customerId, tourId, customerName, tourName,
                        location, price, dateTime);
                bookings.add(booking);
            }

            return bookings;

        } catch (SQLException e) {
            throw new Error(e);
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pStmt != null) {
                    pStmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

//        return bookings;
    }

}
