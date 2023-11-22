package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import conexao.Conexao;
import entidade.Especialidade;
import entidade.Medico;

public class MedicoDAO {
    private PreparedStatement ps;
    private ResultSet rs;
    private String sql;
    private Conexao conexao;

    public MedicoDAO() {
        conexao = new Conexao();
    }

    public List<Medico> listarMedicos() {
        sql = "SELECT jm.*, je.especialidade FROM java_medico jm JOIN java_especialidade je ON jm.id_especialidade = je.id";
        List<Medico> listaMedicos = new LinkedList<>();

        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                listaMedicos.add(new Medico(rs.getInt("id"), rs.getString("nome"), rs.getString("crm"),
                        new Especialidade(rs.getInt("id_especialidade"), rs.getString("especialidade"))));
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar os medicos\n" + e);
        } finally {
            fecharRecursos();
        }
        return listaMedicos;
    }

    public boolean inserir(Medico medico) {
        sql = "INSERT INTO java_medico (id, nome, crm, id_especialidade) VALUES (id_medico_seq.nextval, ?, ?, ?)";

        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);
            ps.setString(1, medico.getNome());
            ps.setString(2, medico.getCrm());
            ps.setInt(3, medico.getEspecialidade().getId());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println("Erro ao inserir no banco de dados\n" + e);
            return false;
        } finally {
            fecharRecursos();
        }
    }

    public Medico consultarPorId(int idMedico) {
        sql = "SELECT * FROM java_medico jm JOIN java_especialidade je ON jm.id_especialidade = je.id WHERE id = ?";

        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, idMedico);

            rs = ps.executeQuery();
            if (rs.next()) {
                return new Medico(rs.getInt("id"), rs.getString("nome"), rs.getString("crm"),
                        new Especialidade(rs.getInt("id_especialidade"), rs.getString("especialidade")));
            }
        } catch (SQLException e) {
            System.out.println("Erro ao consultar médico por ID\n" + e);
        } finally {
            fecharRecursos();
        }

        return null; // Retorna null se não encontrar o médico com o ID fornecido
    }


    private void fecharRecursos() {
        try {
            if (ps != null) {
                ps.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            System.out.println("Erro ao fechar recursos\n" + e);
        }
    }
}
