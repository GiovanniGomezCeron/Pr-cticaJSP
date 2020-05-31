package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

public class Editar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("Nombre");
        String ap = request.getParameter("Apellido");
        String dui = request.getParameter("Dui");
        Persona p = new Persona();
        p.setApellidos(ap);
        p.setDui(dui);
        p.setNombres(nom);
        if (p.editarDatos() == 1) {
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out=response.getWriter();
        String nom = request.getParameter("Nombre");
        String ap = request.getParameter("Apellido");
        String dui = request.getParameter("Dui");
        Persona p = new Persona();
        p.setApellidos(ap);
        p.setDui(dui);
        p.setNombres(nom);
        if (p.editarDatos() == 1) {
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
