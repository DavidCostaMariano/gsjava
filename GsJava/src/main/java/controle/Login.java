package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.PacienteDAO;
import entidade.Paciente;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("floatingInputLogin");
		String senha = request.getParameter("floatingInputSenha");
		PacienteDAO pacienteDao = new PacienteDAO();
		boolean usuarioExistente = pacienteDao.findUserByUsername(username);

		if (usuarioExistente) {
			Paciente paciente = new Paciente();
			paciente = pacienteDao.login(username, senha);
			if (paciente != null) {
				HttpSession session =request.getSession();
				session.setAttribute("usuario", paciente);
				response.sendRedirect("form/formListagemPaciente.jsp");
			} else {
				response.sendRedirect("form/opcoesAdm.jsp");
			}
		}
	}

}
