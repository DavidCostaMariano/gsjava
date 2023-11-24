package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PacienteDAO;
import entidade.Paciente;
import entidade.RelatorioPaciente;

/**
 * Servlet implementation class ConsultasMarcadas
 */
@WebServlet("/consultasMarcadas")
public class ConsultasMarcadas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultasMarcadas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Paciente pacienteSessao = (Paciente) request.getSession().getAttribute("usuario");
        PacienteDAO pacienteDAO = new PacienteDAO();
        List<RelatorioPaciente> paciente = pacienteDAO.consultarPorId(pacienteSessao.getId());  // Ajuste conforme necessário
        request.setAttribute("relatorio", paciente);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("form/ConsultasMarcadas.jsp");
        requestDispatcher.forward(request, response);
	}

}
