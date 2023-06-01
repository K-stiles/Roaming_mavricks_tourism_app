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
import model.Booking;
import model.Tour;
import model.UserInfo;

/**
 *
 * @author abdulmac
 */
public class tour_listing extends HttpServlet {

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
        
        // Get the action parameter from the request
        String action = request.getParameter("action");

        if (action == null ) {

        HttpSession session = request.getSession();

        if (session != null && session.getAttribute("tourID") != null) {

            int tourID = (int) session.getAttribute("tourID");
            Admin admin = new Admin();
            List<Tour> tours = admin.getAllTours();

            Admin admin2 = new Admin();
            List<UserInfo> user = admin2.getAdminDetails(tourID);

            request.setAttribute("user", user);

            // Set the userInfos list as an attribute in the request object
            request.setAttribute("tours", tours);

            // Forward the request to the JSP page
            request.getRequestDispatcher("tour_listing.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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

         // Get the action parameter from the request
        String action = request.getParameter("action");

        if (action != null && action.equals("tour")) {
            
        //        <%-- Check if the session exists --%>
        HttpSession session = request.getSession();

        if (session != null && session.getAttribute("tourID") != null) {

            int tourID = (int) session.getAttribute("tourID");
            Admin admin = new Admin();
            List<Tour> tours = admin.getAllTours();

            Admin admin2 = new Admin();
            List<UserInfo> user = admin2.getAdminDetails(tourID);

            request.setAttribute("user", user);

            // Set the userInfos list as an attribute in the request object
            request.setAttribute("tours", tours);

            String name = request.getParameter("name");
            String location = request.getParameter("location");
            String price = request.getParameter("price");
            String imgUrl = request.getParameter("imgUrl");
            if ((name == null || location == null || price == null || imgUrl == null)
                || ("".equals(name) || "".equals(location) 
                    || "".equals(price) || "".equals(imgUrl))) {

                request.setAttribute("tourMsg2", "Pls Fill in all Required Fields *");

                request.getRequestDispatcher("tour_listing.jsp").forward(request, response);
                return;
            }

            Admin admin3 = new Admin();
            int newTour = admin3.newTour(name, location, price, imgUrl);

//            System.out.println(bookingsDetails.size());
//            System.out.println("bookings.size()");
            // The list is empty
//                System.out.println(bookings);
            if (newTour != -1) {

                Admin admin4 = new Admin();
                tours = admin4.getAllTours();

                request.setAttribute("tours", tours);
                // Set the booking_msg as an attribute in the request object
                request.setAttribute("tourMsg1", "Tour added succesfully");

                // Forward the request to the JSP page
                request.getRequestDispatcher("tour_listing.jsp").forward(request, response);

            } else {
                request.setAttribute("tourMsg2", "Tour failed to add, pls try again");

                // Forward the request to the JSP page
                request.getRequestDispatcher("tour_listing.jsp").forward(request, response);

            }

        } else {
            request.setAttribute("LogMsg", "Login failed. Please try again.");

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
         } else {
            request.setAttribute("LogMsg", "Login failed. Please try again.");

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

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
