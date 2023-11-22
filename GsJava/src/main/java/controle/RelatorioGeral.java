package controle;

import dao.ConsultaDAO;
import entidade.Consulta;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

@WebServlet("/relatorioGeral")
public class RelatorioGeral extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ConsultaDAO consultaDAO = new ConsultaDAO();
        List<Consulta> consultas = consultaDAO.obterConsultasGerais();  // Método a ser implementado na classe ConsultaDAO

        request.setAttribute("consultas", consultas);

        RequestDispatcher dispatcher = request.getRequestDispatcher("relatorioGeral.jsp");
        dispatcher.forward(request, response);
    }
}
