/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Loki Kun
 */
public class StudentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //request.getRequestDispatcher("/input.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Map<String, String> errors = new HashMap<String, String>();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String password = request.getParameter("password");
        if (firstName.length()<3 ||  firstName.length()>100) {
            errors.put("firstName", "First Name must in 3 - 100 characters.");
        }
        if (lastName.length()<3 ||  lastName.length()>100) {
            errors.put("lastName", "Last Name must in 3 - 100 characters.");
        }
        if (password.length()<8 ) {
            errors.put("password", "Password Name must more than 8 characters.");
        }

        // Repeat for all parameters.
        if (errors.isEmpty()) {
            // No errors, redirect to Amtrak.            

//            firstName.setMaxAge(60*60*10);
//            lastName.setMaxAge(60*60*10);
//            password.setMaxAge(60*60*10);
            response.addCookie(new Cookie("firstName", firstName));
            response.addCookie(new Cookie("lastName", lastName));
            response.addCookie(new Cookie("password", password));
            //response.sendRedirect("/Session/display.jsp");
             //<span class="error">${errors.origin}</span>
            request.getRequestDispatcher("display.jsp").forward(request, response);
        } else {
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("input.jsp").forward(request, response);
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
