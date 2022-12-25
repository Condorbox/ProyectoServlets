package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.json.simple.JSONArray;

import java.io.IOException;

@WebServlet(name = "ServletConsultaViajes", value = "/ServletConsultaViajes")
public class ServletConsultaViajes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ServletContext context = getServletContext();
        GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("codcli") == null) {
            RequestDispatcher vistaError = request.getRequestDispatcher("error.jsp");
            vistaError.forward(request, response);
            return;
        }

        String origen = request.getParameter("origen");
        JSONArray res = gestor.consultaViajes(origen);
        request.setAttribute("resultado", res);
        RequestDispatcher vista = request.getRequestDispatcher("consulta.jsp");
        vista.forward(request, response);
    }
}
