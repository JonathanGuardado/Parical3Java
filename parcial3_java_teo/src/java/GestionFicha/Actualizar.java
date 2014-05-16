/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GestionFicha;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author watchman
 */
@WebServlet(name = "Actualizar", urlPatterns = {"/Actualizar"})
public class Actualizar extends HttpServlet {

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

            try {
                String carnet = request.getParameter("carnet");
                String nombres = request.getParameter("nombres");
                String apellidos = request.getParameter("apellidos");
                String genero = request.getParameter("genero");
                String email = request.getParameter("email");
                String responsable = request.getParameter("responsable");
                String direccion = request.getParameter("direccion");
                String telcasa = request.getParameter("telcasa");
                String teltrab = request.getParameter("teltrab");
                String fecha_nac = request.getParameter("fecha_nac");
                String tutor = request.getParameter("tutor");
                Double notapaes = Double.parseDouble(request.getParameter("notapaes"));
                int horas = Integer.parseInt(request.getParameter("horas"));
                int pasantias = Integer.parseInt(request.getParameter("pasantias"));
                 String carrera = request.getParameter("carrera");
                String escuela = request.getParameter("escuela");
                String facultad = request.getParameter("facultad");
                Connection conn = null;
                Statement st = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn = DriverManager.getConnection("jdbc:mysql://localhost/parcial3_java", "root", "");
                st = conn.createStatement();

              st.executeUpdate("UPDATE `alumno` "
                        + " SET nombres='" + nombres + "' ,apellidos='" + apellidos + "' ,genero='" + genero + "' ,email='" + email + "' ,responsable='" + responsable + "' ,direccion='" + direccion
                        + "' ,telcasa='" + telcasa + "' ,teltrab='" + teltrab + "' ,fecha_nac='" + fecha_nac + "'" + " ,tutor='" + tutor + "' ,notapaes=" + notapaes + " ,horas=" + horas + " ,pasantias=" + pasantias 
                        +" ,id_carrera=" + carrera 
                        + " where " + "carnet='" + carnet + "'");
            } catch (Exception ex) {
                    System.out.println("Error: "+ex);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Actualizar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Registro Actualizado</h1>");
            out.println("</body>");
            out.println("</html>");
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
