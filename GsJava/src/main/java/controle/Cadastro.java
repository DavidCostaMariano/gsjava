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
 * Servlet implementation class Cadastro
 */
@WebServlet("/cadastrar")
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cadastro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("floatingInputNome");
		String cpf = request.getParameter("floatingInputCpf");
		String email = request.getParameter("floatingInputEmail");
		String usuario = request.getParameter("floatingInputUsuario");
		String senha = request.getParameter("floatingInputSenha");
		Paciente paciente = new Paciente();
		paciente.setNome(nome);
		paciente.setCpf(cpf);
		paciente.setEmail(email);
		paciente.setSenha(senha);
		paciente.setUsername(usuario);
		PacienteDAO pacienteDao = new PacienteDAO();
		boolean cadastrado = pacienteDao.inserir(paciente);
		if(cadastrado) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
	}

}
