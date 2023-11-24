package controle;

import dao.MedicoDAO;
import dao.PacienteDAO;
import entidade.Paciente;
import entidade.RelatorioMedico;
import entidade.RelatorioPaciente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

@WebServlet("/relatorioPorPaciente")
public class RelatorioPorPaciente extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPaciente = Integer.parseInt(request.getParameter("selectPaciente"));

        PacienteDAO pacienteDAO = new PacienteDAO();
        List<RelatorioPaciente> paciente = pacienteDAO.consultarPorId(idPaciente);  // Ajuste conforme necessário
        request.setAttribute("relatorio", paciente);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("form/relatorioPorPaciente.jsp");
        requestDispatcher.forward(request, response);
        
    }
}
