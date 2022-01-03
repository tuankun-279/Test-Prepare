/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 *
 * @author Loki Kun
 */
public class AssigntServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  

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
     Product pro = new Product(0);
        EntityManager em = Persistence.createEntityManagerFactory("BTAPTT1NPU").createEntityManager();
        
        List<Category> catlist = em.createNamedQuery("Category.findAll", Category.class).getResultList();
        
        if(request.getParameter("id") != null){
        pro = em.find(Product.class, Integer.parseInt(request.getParameter("id")));
        }
        request.setAttribute("cat",catlist);
        request.setAttribute("pro",pro);
        
        request.getRequestDispatcher("/assignt.jsp").forward(request, response);
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
       String proId = request.getParameter("productId");
       EntityManager em = Persistence.createEntityManagerFactory("BTAPTT1NPU").createEntityManager();
       if(proId != null && !proId.isEmpty()){
       Product pro = em.find(Product.class,Integer.parseInt(proId));
       int cateid = Integer.parseInt(request.getParameter("category"));
       
       em.getTransaction().begin();
       pro.setCategoryID(cateid);
       em.getTransaction().commit();
       response.sendRedirect("catservlet");
       
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
