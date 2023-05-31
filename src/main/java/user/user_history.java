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
public class user_history extends HttpServlet {

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

//            Admin admin = new Admin();
//            List<Tour> tours = admin.getAllTours();
//
//            Admin admin2 = new Admin();
////            List<UserInfo> user = admin2.getCustomerDetails(session.getAttribute("customerId"));
            int customerId = (int) session.getAttribute("customerId");
//            List<UserInfo> user = admin2.getCustomerDetails(customerId);

            Admin admin = new Admin();
            List<Booking> userTours = admin.getBookings(customerId);

            Admin admin2 = new Admin();
            List<UserInfo> user = admin2.getCustomerDetails(customerId);
            
            request.setAttribute("user", user);

            // Set the userInfos list as an attribute in the request object
//            request.setAttribute("tours", tours);
//                    request.setAttribute("email", email);
//            request.setAttribute("user", user);
            request.setAttribute("userTours", userTours);

            // Forward the request to the JSP page
            request.getRequestDispatcher("user_history.jsp").forward(request, response);

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
