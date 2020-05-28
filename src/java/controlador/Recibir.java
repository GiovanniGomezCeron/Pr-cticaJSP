package controlador;
import modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Recibir extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dui = request.getParameter("txtDui");
        String nombre = request.getParameter("txtNombres");
        String apellidos = request.getParameter("txtApellidos");

        Persona person = new Persona();
        person.setApellidos(apellidos);
        person.setNombres(nombre);
        person.setDui(dui);

        if (person.insertarDatos() == true) {
           
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
