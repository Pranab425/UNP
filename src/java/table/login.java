/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 1406425
 */
@WebServlet(name = "login", urlPatterns = {"/log"})
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
        PrintWriter out = response.getWriter();
        int i = Integer.parseInt(request.getParameter("username"));
        String p = request.getParameter("password");
        String z = request.getParameter("category");
        String q =   "select * from login where id="+i+" and password='"+p+"';";
        ResultSet rs = DAOLayer.selectData(q);
        try{
            if(rs.next()){
                //VALID USER
                
        
                 HttpSession s = request.getSession();
                 s.setAttribute("id",i);
                String sa = rs.getString(3);
        if(sa.equals("faculty"))
        {
           //REDIRECT To Control Panel : (URL : cp)
           // response.sendRedirect("cp");          //used when we do not want to print name in admin
           // RequestDispatcher rd = request.getRequestDispatcher("cp");
        //    rd.forward(request, response);       
            RequestDispatcher rd = request.getRequestDispatcher("fachome.jsp");
            rd.forward(request, response);         //for forward type dispatch
       
            // rd.include(request, response);   for include type dispatch
      //      out.print("WELCOME ADMIN!!!!!");
        }
        if(sa.equals("admin")){
           //REDIRECT To USER HOME : (URL : home.html)
            response.sendRedirect("adminhome.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("adminhome.jsp");
            rd.forward(request, response);
        }
        if (sa.equals("student")){
           //REDIRECT To USER HOME : (URL : home.html)
            response.sendRedirect("stuhome.jsp");
        }
               }
        else{
                //INVALID USER
                RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                rd.include(request, response);
           out.println("<h1>Invalid UserID Or Password</h1>");   
             }
           }catch(Exception e){
            out.print("ERROR"+e.getMessage());
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
