/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Models.Category;
import Models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Loki Kun
 */
public class AssignServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product pro = new Product(0);
        
        EntityManager em = Persistence.createEntityManagerFactory("PMPU").createEntityManager();
        
        List<Category> list = em.createNamedQuery("Category.findAll", Category.class).getResultList();
        
        if(request.getParameter("proid") != null){
            pro = em.find(Product.class, Integer.parseInt(request.getParameter("proid")));
        }
        
        request.setAttribute("categories", list);
        request.setAttribute("pro", pro);
        
        request.getRequestDispatcher("assign.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String proId = request.getParameter("productId");
       
       EntityManager em =Persistence.createEntityManagerFactory("PMPU").createEntityManager();
       
       if(proId != null && !proId.isEmpty()){
            Product pro = em.find(Product.class, Integer.parseInt(proId));
            int cateid = Integer.parseInt(request.getParameter("category"));          
                       
            em.getTransaction().begin();
            pro.setCategoryID(cateid);
            em.getTransaction().commit();
            response.sendRedirect("category-list");
        }              
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
