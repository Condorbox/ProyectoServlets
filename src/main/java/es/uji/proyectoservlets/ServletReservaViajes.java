package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletReservaViajes", value = "/ServletReservaViajes")
public class ServletReservaViajes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        ServletContext context = getServletContext();
        GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");

    }
}
