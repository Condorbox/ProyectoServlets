package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.json.simple.JSONObject;

import java.io.IOException;

@WebServlet(name = "ServletReservaViajes", value = "/ServletReservaViajes")
public class ServletReservaViajes extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ServletContext context = getServletContext();
        GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("codcli") == null) {
            RequestDispatcher vistaError = request.getRequestDispatcher("error.jsp");
            vistaError.forward(request, response);
            return;
        }

        String codcli = session.getAttribute("codcli").toString();
        String codviaje = request.getParameter("codviaje");
        JSONObject res = gestor.reservaViaje(codviaje, codcli);
        request.setAttribute("resultado", res);
        RequestDispatcher vista = request.getRequestDispatcher("reserva.jsp");
        vista.forward(request, response);
    }
}
