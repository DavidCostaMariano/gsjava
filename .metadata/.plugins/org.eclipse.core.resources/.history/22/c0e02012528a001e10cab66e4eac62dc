package controle;

import dao.PacienteDAO;
import entidade.Paciente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.IOException;

@WebServlet("/relatorioPorPaciente")
public class RelatorioPorPaciente extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPaciente = Integer.parseInt(request.getParameter("idPaciente"));

        PacienteDAO pacienteDAO = new PacienteDAO();
        Paciente paciente = pacienteDAO.consultarPorId(idPaciente);  // Ajuste conforme necessário

        request.setAttribute("paciente", paciente);

        RequestDispatcher dispatcher = request.getRequestDispatcher("relatorioPorPaciente.jsp");
        dispatcher.forward(request, response);
    }
}
