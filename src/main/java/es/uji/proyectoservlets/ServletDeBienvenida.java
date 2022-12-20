package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletDeBienvenida", value = "/ServletDeBienvenida")
public class ServletDeBienvenida extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        final GestorViajes gestorViajes = new GestorViajes();
        ServletContext context = getServletContext();
        context.setAttribute("gestor", gestorViajes);

        HttpSession session = request.getSession(true);
        session.setAttribute("codcli", request.getParameter("codcli"));

        RequestDispatcher vista = request.getRequestDispatcher("main.jsp");
        vista.forward(request,response);
    }
}
