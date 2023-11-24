package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EspecialidadeDAO;
import dao.MedicoDAO;
import entidade.Especialidade;
import entidade.Medico;

/**
 * Servlet implementation class ListarEspecialidades
 */
@WebServlet("/listarEspecialidades")
public class ListarEspecialidades extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarEspecialidades() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        EspecialidadeDAO especialidadeDAO = new EspecialidadeDAO();
        List<Especialidade> listaEspecialidades = especialidadeDAO.listarEspecialidade();

        // Adicione a lista de médicos ao escopo da requisição
        request.setAttribute("listaEspecialidades", listaEspecialidades);

	}

}
