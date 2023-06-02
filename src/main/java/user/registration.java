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
import model.UserInfo;

/**
 *
 * @author abdulmac
 */
public class registration extends HttpServlet {

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
            
            return;
        }

        request.getRequestDispatcher("register.jsp").forward(request, response);

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

        if (action != null && action.equals("create")) {
            // check if user exists first

            Admin login = new Admin();

            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            int userExists = login.UserExists(email);

            if (userExists != -1) {
//           User exists //  click here to login link

            } else {
                // Create a new user

                int isUserCreated = createUser(name, address, email, password);

                if (isUserCreated != -1) {
//            out.println("<h2>Login successful!</h2>");
                    // Set session value upon successful login
                    HttpSession session = request.getSession();

                    session.setAttribute("customerId", isUserCreated);

                    Admin admin = new Admin();
                    List<Tour> tours = admin.getAllTours();

                    Admin admin2 = new Admin();
                    List<UserInfo> user = admin2.getCustomerDetails(isUserCreated);

                    // Set the userInfos list as an attribute in the request object
                    request.setAttribute("tours", tours);
//                    request.setAttribute("email", email);
                    request.setAttribute("user", user);

                    // Forward the request to the JSP page
                    request.getRequestDispatcher("user_dashboard.jsp").forward(request, response);

                } else {
//            out.println("<h2>Create a new user failed. Please try again.</h2>");
                }

            }

        }

    }

    private int createUser(String name, String address, String email, String password) {

        Admin reg = new Admin();

        return reg.registerCustomer(name, address, email, password);

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
