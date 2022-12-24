package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "ServletSalida", value = "/ServletSalida")
public class ServletSalida extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ServletContext context = getServletContext();
        GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
        HttpSession session = request.getSession(false);
        if (session == null) {
            RequestDispatcher vistaError = request.getRequestDispatcher("error.jsp");
            vistaError.forward(request, response);
            return;
        }

        gestor.guardaDatos();
        session.removeAttribute("codcli");
        session.invalidate();
        RequestDispatcher vista = request.getRequestDispatcher("salida.jsp");
        vista.forward(request, response);
    }
}
