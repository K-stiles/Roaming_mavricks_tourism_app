/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package user;

import controller.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Tour;
import model.*;

/**
 *
 * @author abdulmac
 */
public class bookings extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //        <%-- Check if the session exists --%>
        HttpSession session = request.getSession();

        if (session != null && session.getAttribute("customerId") != null) {

            Admin admin = new Admin();
            List<Tour> tours = admin.getAllTours();

            Admin admin2 = new Admin();
//            List<UserInfo> user = admin2.getCustomerDetails(session.getAttribute("customerId"));
            int customerId = (int) session.getAttribute("customerId");
            List<UserInfo> user = admin2.getCustomerDetails(customerId);

            // Set the userInfos list as an attribute in the request object
            request.setAttribute("tours", tours);
//                    request.setAttribute("email", email);
            request.setAttribute("user", user);

//            to avoid null errors on return
            Admin admin6 = new Admin();
            List<Tour> userTours = admin6.getUserTours(customerId);

            request.setAttribute("userTours", userTours);

            String tourIdParam = request.getParameter("tour_id");
            if (tourIdParam == null) {
                request.getRequestDispatcher("user_dashboard.jsp").forward(request, response);
                return;
            }
            int tourId = Integer.parseInt(tourIdParam);

            Admin admin3 = new Admin();

//            List bookingsDetails = admin.getBookings(tourId, customerId);
            List<Booking> bookingsDetails = admin3.getBookings(tourId, customerId);

//            System.out.println(bookingsDetails.size());
//            System.out.println("bookings.size()");
            if (bookingsDetails.isEmpty()) {
                // The list is empty

                Admin admin4 = new Admin();
                int bookings = admin4.bookings(tourId, customerId);

                Admin admin5 = new Admin();
                userTours = admin5.getUserTours(customerId);

                request.setAttribute("userTours", userTours);

//                System.out.println(bookings);
                if (bookings != -1) {

                    // Set the booking_msg as an attribute in the request object
                    request.setAttribute("bookingMsg1", "Booking made succesfully");

                } else {
                    request.setAttribute("bookingMsg2", "Booking failed, pls try again");

                }
            } else {
                // The list is q empty
                request.setAttribute("bookingMsg2", "Destination already booked, pls choose elsewhere");

            }

            // Forward the request to the JSP page
            request.getRequestDispatcher("user_dashboard.jsp").forward(request, response);

        } else {
            request.setAttribute("LogMsg", "Please Login or Register to book a tour.");

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
