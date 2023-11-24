package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MedicoDAO;
import dao.PacienteDAO;
import entidade.Medico;
import entidade.Paciente;

/**
 * Servlet implementation class ListarPaciente
 */
@WebServlet("/listarPaciente")
public class ListarPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarPaciente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        PacienteDAO pacienteDAO = new PacienteDAO();
        List<Paciente> listaPacientes = pacienteDAO.listarPaciente();

        // Adicione a lista de médicos ao escopo da requisição
        request.setAttribute("listaPacientes", listaPacientes);
	}

}
