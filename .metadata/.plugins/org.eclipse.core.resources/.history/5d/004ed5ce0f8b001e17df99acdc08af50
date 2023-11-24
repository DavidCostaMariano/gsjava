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

    public boolean inserir(Consulta consulta) {
        // Defina a instrução SQL de inserção
        String sql = "INSERT INTO consulta (id_paciente, id_medico, dia_semana) VALUES (?, ?, ?)";

        try (Connection connection = conexao.conectar()) {
            // Crie um PreparedStatement com a instrução SQL
            ps = connection.prepareStatement(sql);

            // Configure os parâmetros da consulta
            ps.setInt(1, consulta.getPaciente().getId()); // Supondo que getId() retorne o ID do paciente
            ps.setInt(2, consulta.getMedico().getId()); // Supondo que getId() retorne o ID do médico
            ps.setInt(3, consulta.getDiaSemana());

            // Execute a inserção
            int linhasAfetadas = ps.executeUpdate();

            // Verifique se a inserção foi bem-sucedida
            return linhasAfetadas > 0;
        } catch (SQLException e) {
            System.out.println("Erro ao inserir consulta no banco de dados: " + e);
            return false;
        }
    }


    public List<Consulta> obterConsultasGerais() {
        sql = "SELECT * FROM consulta c " +
              "JOIN paciente p ON c.id_paciente = p.id " +
              "JOIN medico m ON c.id_medico = m.id";

        List<Consulta> consultas = new ArrayList<>();

        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                int idConsulta = rs.getInt("id_consulta");
                Paciente paciente = new Paciente(rs.getInt("id_paciente"), rs.getString("nome_paciente"), rs.getString("cpf_paciente"), rs.getString("email_paciente"), rs.getString("username_paciente"), rs.getString("senha_paciente"));
                Medico medico = new Medico(rs.getInt("id_medico"), rs.getString("nome_medico"), rs.getString("crm_medico"), null); // Você precisa ajustar conforme sua classe Medico
                int diaSemana = rs.getInt("dia_semana"); // Certifique-se de ter essa coluna na tabela

                Consulta consulta = new Consulta(idConsulta, paciente, medico, diaSemana);
                consultas.add(consulta);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao obter consultas gerais: " + e);
        }

        return consultas;
    }
}
