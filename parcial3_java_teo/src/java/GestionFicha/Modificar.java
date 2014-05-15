/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GestionFicha;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author watchman
 */
@WebServlet(name = "Modificar", urlPatterns = {"/Modificar"})
public class Modificar extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Modificar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<center>");
            out.println("<table>");
            String carnet=request.getParameter("carnet");
            Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java", "root", "");
            Statement st = null;
             ResultSet rs = null;
            st = conn.createStatement();
            rs = st.executeQuery("select * from alumno where alumno.carnet='"+carnet+"'");
            List<String> alumno= new ArrayList<String>();
            while(rs.next()){
                out.println("<tr><td>Nombres: </td><td> <input type='text' class='form-control' name='nombres' value='"+rs.getString("nombres")+"'/></td></tr>");
                out.println("<tr><td>Apellidos: </td><td> <input type='text' class='form-control' name='apellidos' value='"+rs.getString("apellidos")+"'/></td></tr>");
                out.println("<tr><td>Genero: </td><td><input type='text' class='form-control' name='genero' value='"+rs.getString("genero")+"'/></td></tr>");
                out.println("<tr><td>Email</td><td> <input type='text' class='form-control' name='email' value='"+rs.getString("email")+"'/></td></tr>");
                out.println("<tr><td>Responsable</td><td> <input type='text'class='form-control' name='responsable' value='"+rs.getString("responsable")+"'/></td></tr>");
                out.println("<tr><td>Direccion</td><td> <input type='text' class='form-control' name='direccion' value='"+rs.getString("direccion")+"'/></td></tr>");
                out.println("<tr><td>Telcasa</td><td> <input type='text' class='form-control' name='telcasa' value='"+rs.getString("telcasa")+"'/></td></tr>");
                out.println("<tr><td>Teltrabajo</td><td> <input type='text'class='form-control' name='teltrab' value='"+rs.getString("teltrab")+"'/></td></tr>");
                out.println("<tr><td>Fecha nacimiento</td><td> <input type='text' class='form-control' name='fecha_nac' value='"+rs.getString("fecha_nac")+"'/></td></tr>");
                out.println("<tr><td>Tutor</td><td> <input type='text' name='tutor' class='form-control' value='"+rs.getString("tutor")+"'/></td></tr>");
                out.println("<tr><td>Nota paes</td><td> <input type='text' class='form-control' name='notapaes' value='"+rs.getString("notapaes")+"'/></td></tr>");
                out.println("<tr><td>Horas</td><td> <input type='text' class='form-control' name='horas' value='"+rs.getString("horas")+"'/></td></tr>");
                out.println("<tr><td>Pasantias</td><td> <input type='text' class='form-control' name='pasantias' value='"+rs.getString("pasantias")+"'/></td></tr>");    
            }
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e){
        System.out.println("Error: "+e);
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
