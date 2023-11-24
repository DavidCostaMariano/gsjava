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

    public ListarMedicos() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MedicoDAO medicoDAO = new MedicoDAO();
        List<Medico> listaMedicosCardiologistas = medicoDAO.listarMedicosCardiologistas();
        List<Medico> listaMedicosNeurologia = medicoDAO.listarMedicosNeurologia();
        List<Medico> listaMedicosPsiquiatra = medicoDAO.listarMedicosPsiquiatria();

        // Adicione a lista de médicos ao escopo da requisição
        request.setAttribute("listaMedicosCardiologistas", listaMedicosCardiologistas);
        request.setAttribute("listaMedicosNeurologia", listaMedicosNeurologia);
        request.setAttribute("listaMedicosPsiquiatra", listaMedicosPsiquiatra);

    }
}
