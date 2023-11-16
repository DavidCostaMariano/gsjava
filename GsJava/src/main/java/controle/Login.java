package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
				//precisa verificar se o usuario é adm ou nao, se for adm jogar para uma tela que tenha as funcionalidades dele
				//se nao, jogar para tela com as funçoes do paciente
				response.sendRedirect("form/formListagemPaciente.jsp");
				// login com sucesso, dispatcher pra alguma tela ai
			}else {
				//response.sendRedirect("form/formCadastroVenda.jsp");
			}
		}
	}

}
