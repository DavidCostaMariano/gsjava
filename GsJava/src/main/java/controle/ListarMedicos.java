package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MedicoDAO;
import entidade.Medico;

/**
 * Servlet implementation class ListarMedicos
 */
@WebServlet("/listarMedicos")
public class ListarMedicos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarMedicos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MedicoDAO medicoDAO = new MedicoDAO();
		List<Medico> listaMedicos = medicoDAO.listarMedicos();
		request.setAttribute("listaMedicos", listaMedicos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/form/formAgendarConsulta.jsp");
		dispatcher.forward(request, response);
	}

}
