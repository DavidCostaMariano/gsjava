package controle;

import dao.MedicoDAO;
import dao.PacienteDAO;
import entidade.Medico;
import entidade.RelatorioMedico;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

@WebServlet("/relatorioPorMedico")
public class RelatorioPorMedico extends HttpServlet {
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idMedico = Integer.parseInt(request.getParameter("selectMedico"));

        MedicoDAO medicoDAO = new MedicoDAO();
        List<RelatorioMedico> medico = medicoDAO.consultarPorId(idMedico);  // Ajuste conforme necessário
        double valorTotal = 0;
        for(RelatorioMedico item: medico) {
        	valorTotal += item.getValor_consulta();
        }
        request.setAttribute("valorTotal", valorTotal);
        request.setAttribute("relatorio", medico);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("form/relatorioPorMedico.jsp");
        requestDispatcher.forward(request, response);
        
    }
}
