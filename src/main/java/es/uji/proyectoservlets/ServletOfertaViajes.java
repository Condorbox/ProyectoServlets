package es.uji.proyectoservlets;

import es.uji.proyectoservlets.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.json.simple.JSONObject;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "ServletOfertaViajes", value = "/ServletOfertaViajes")
public class ServletOfertaViajes extends HttpServlet {
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
        String origen = request.getParameter("origen");
        String destino = request.getParameter("destino");
        String fecha = request.getParameter("date");
        long numPlazas = Long.parseLong(request.getParameter("numPlazas"));
        long precio = Long.parseLong(request.getParameter("precio"));

        //SOLUCION CUTRE PERO QUE FUNCIONA - RECORDAR FECHAS POSTERIORES A LA ACTUAL -
        System.out.println("Fecha -> " + fecha);
        String[] fechaNotFormated = fecha.split("-");
        fecha = fechaNotFormated[2] + "-" + fechaNotFormated[1] + "-" + fechaNotFormated[0];
        System.out.println("Fecha -> " + fecha);
        //

        JSONObject viajeOfertado =  gestor.ofertaViaje(codcli,origen,destino,fecha,precio,numPlazas);
        System.out.println("VIAJE OFERTADO: " + viajeOfertado.toString());
        request.setAttribute("resultado",viajeOfertado);
        RequestDispatcher vista = request.getRequestDispatcher("oferta.jsp");
        vista.forward(request,response);
    }
}
