/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Loki Kun
 */
public class EmployServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = Persistence.createEntityManagerFactory("EmployeePU").createEntityManager();        
        String id = request.getParameter("id_delete");

        if (id != null && !id.isEmpty()) {    
            Tblemployee emp = em.find(Tblemployee.class, id);
            em.getTransaction().begin();
            em.remove(emp);
            em.getTransaction().commit();
        }
        List<Tblemployee> emlist = em.createNamedQuery("Tblemployee.findAll", Tblemployee.class).getResultList();
            request.setAttribute("employ", emlist);    
         request.getRequestDispatcher("/employlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //b1: khởi tạo
        EntityManager em = Persistence.createEntityManagerFactory("EmployeePU").createEntityManager();
        Tblemployee emp = new Tblemployee();
        Map<String, String> error = new HashMap<String, String>();
         //b2 : code logic
        // khởi tạo biến lấy giá trị từ jsp
        //int empId = Integer.parseInt(request.getParameter("id"));
        // Logic: nhập id  -> kiểm tra xem có tồn tại chưa -> đúng/ sai ....

        String empId = request.getParameter("id");
        String empname = request.getParameter("name");
        String empow = request.getParameter("pow");
        String emphone = request.getParameter("phone");

        // lấy ra tất cả các đối tượng employee có empNo = empId cho vào 1 list
        List<Tblemployee> emlist = em.createNamedQuery("Tblemployee.findByEmployeeNo", Tblemployee.class).setParameter("employeeNo", empId).getResultList();

        if (!emlist.isEmpty() || emlist != null) {
            //thực hiện add vào db
            error.put("errors", "This Employee is existed, please try other!!");
            request.setAttribute("errors", error);
            request.getRequestDispatcher("Addemploy.jsp").forward(request, response);
        } else {
            em.getTransaction().begin();
            emp.setEmployeeNo(empId);
            emp.setEmployeeName(empname);
            emp.setPlaceOfWork(empow);
            emp.setPhoneNo(emphone);
            em.persist(emp);
            em.getTransaction().commit();
            response.sendRedirect("/Employee/emplyservlet");

        }

         //b3: trả về giá trị 
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
