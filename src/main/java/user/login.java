/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpSession;

import controller.*;
import java.util.List;
import model.*;

/**
 *
 * @author abdulmac
 */
public class login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

//        <%-- Check if the session exists --%>
        HttpSession session = request.getSession();

        if (session != null && session.getAttribute("customerId") != null) {

            Admin admin = new Admin();
            List<Tour> tours = admin.getAllTours();

            Admin admin2 = new Admin();
//            List<UserInfo> user = admin2.getCustomerDetails(session.getAttribute("customerId"));
            int customerId = (int) session.getAttribute("customerId");
            List<UserInfo> user = admin2.getCustomerDetails(customerId);

            Admin admin3 = new Admin();
            List<Tour> userTours = admin3.getUserTours(customerId);

            // Set the userInfos list as an attribute in the request object
            request.setAttribute("tours", tours);
//                    request.setAttribute("email", email);
            request.setAttribute("user", user);

            request.setAttribute("userTours", userTours);

            // Forward the request to the JSP page
            request.getRequestDispatcher("user_dashboard.jsp").forward(request, response);

        } else if (session != null && session.getAttribute("tourID") != null) {

        } else {
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

        // Get the action parameter from the request
        String action = request.getParameter("action");

        if (action != null && action.equals("login")) {
            // Create a new user

            // Get the email and password from the request parameters
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String role = request.getParameter("role");

            // Perform the login validation
            int isValidUser = validateLogin(email, password, role);

            if (isValidUser != -1) {
//            out.println("<h2>Login successful!</h2>");
//             go to customer or admin dashboard
                // Set session value upon successful login
                HttpSession session = request.getSession();
                if (role.equals("tour_guide")) {

                    session.setAttribute("tourID", isValidUser);

                    Admin admin = new Admin();
                    List<Booking> bookings = admin.getAllBookings();

                    // Set the userInfos list as an attribute in the request object
                    request.setAttribute("bookings", bookings);

                    // Forward the request to the JSP page
                    request.getRequestDispatcher("bookingList.jsp").forward(request, response);

                } else {

                    session.setAttribute("customerId", isValidUser);

                    Admin admin = new Admin();
                    List<Tour> tours = admin.getAllTours();

                    Admin admin2 = new Admin();
                    List<UserInfo> user = admin2.getCustomerDetails(isValidUser);

                    Admin admin3 = new Admin();
                    List<Tour> userTours = admin3.getUserTours(isValidUser);

                    // Set the userInfos list as an attribute in the request object
                    request.setAttribute("tours", tours);
//                    request.setAttribute("email", email);
                    request.setAttribute("user", user);

                    request.setAttribute("userTours", userTours);

                    // Forward the request to the JSP page
                    request.getRequestDispatcher("user_dashboard.jsp").forward(request, response);

                }

            } else {
//            out.println("<h2>Login failed. Please try again.</h2>");

                request.setAttribute("LogMsg", "Login failed. Please try again.");

                request.getRequestDispatcher("login.jsp").forward(request, response);

            }

        } else {
            request.setAttribute("LogMsg", "Login failed. Please try again.");

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    private int validateLogin(String email, String password, String role) {

        Admin login = new Admin();

        return login.loginController(email, password, role);

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
