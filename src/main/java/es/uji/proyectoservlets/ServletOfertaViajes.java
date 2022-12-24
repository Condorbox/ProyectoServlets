package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.json.simple.JSONObject;

import java.io.IOException;

@WebServlet(name = "ServletOfertaViajes", value = "/ServletOfertaViajes")
public class ServletOfertaViajes extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        ServletContext context = getServletContext();
        GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
        HttpSession session = request.getSession(false);
        if (session == null) {
            RequestDispatcher vistaError = request.getRequestDispatcher("error.jsp");
            vistaError.forward(request, response);
            return;
        }

        String codcli = request.getParameter("codcli");
        String origen = request.getParameter("origen");
        String destino = request.getParameter("destino");
        String fecha = request.getParameter("fecha");
        long numplazas = Long.parseLong(request.getParameter("numplazas"));
        long precio = Long.parseLong(request.getParameter("precio"));

        JSONObject viajeOfertado =  gestor.ofertaViaje(codcli,origen,destino,fecha,precio,numplazas);
        request.setAttribute("resultado",viajeOfertado);
        RequestDispatcher vista = request.getRequestDispatcher("oferta.jsp");
        vista.forward(request,response);
    }
}
