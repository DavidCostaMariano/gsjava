package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conexao.Conexao;
import entidade.Consulta;
import entidade.Medico;
import entidade.Paciente;

public class ConsultaDAO {
    private PreparedStatement ps;
    private ResultSet rs;
    private String sql;
    private Conexao conexao;

    public ConsultaDAO() {
        conexao = new Conexao();
    }

//    public boolean inserir(Consulta consulta) {
//        // Defina a instrução SQL de inserção
//        String sql = "INSERT INTO consulta (id_paciente, id_medico, dia_semana) VALUES (?, ?, ?)";
//
//        try (Connection connection = conexao.conectar()) {
//            // Crie um PreparedStatement com a instrução SQL
//            ps = connection.prepareStatement(sql);
//
//            // Configure os parâmetros da consulta
//            ps.setInt(1, consulta.getPaciente().getId()); // Supondo que getId() retorne o ID do paciente
//            ps.setInt(2, consulta.getMedico().getId()); // Supondo que getId() retorne o ID do médico
//            ps.setInt(3, consulta.getDiaSemana());
//
//            // Execute a inserção
//            int linhasAfetadas = ps.executeUpdate();
//
//            // Verifique se a inserção foi bem-sucedida
//            return linhasAfetadas > 0;
//        } catch (SQLException e) {
//            System.out.println("Erro ao inserir consulta no banco de dados: " + e);
//            return false;
//        }
//    }


    public List<Consulta> obterConsultasGerais() {
        sql = "SELECT p.nome nome_paciente, c.data_consulta, m.nome nome_medico, e.especialidade, e.valor_consulta FROM java_consulta c \r\n"
        		+ "JOIN java_paciente p ON c.id_paciente = p.id \r\n"
        		+ "JOIN java_medico m ON c.id_medico = m.id \r\n"
        		+ "inner join java_especialidade e on m.id_especialidade = e.id";

        List<Consulta> consultas = new ArrayList<>();

        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
            	Consulta consulta = new Consulta(rs.getString("nome_paciente"), rs.getString("nome_medico"), rs.getString("especialidade"),rs.getDate("data_consulta"),rs.getDouble("valor_consulta"));
                consultas.add(consulta);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao obter consultas gerais: " + e);
        }

        return consultas;
    }
}
