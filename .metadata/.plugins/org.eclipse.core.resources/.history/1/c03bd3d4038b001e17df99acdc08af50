package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import conexao.Conexao;
import entidade.Especialidade;
import entidade.Medico;
import entidade.RelatorioMedico;

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

    public List<RelatorioMedico> consultarPorId(int idMedico) {
        sql = "SELECT jm.nome nome_medico, jp.nome nome_paciente, jc.data_consulta, je.valor_consulta from java_consulta jc inner join java_medico jm on jc.id_medico = jm.id inner join java_paciente jp on jc.id_paciente = jp.id inner join java_especialidade je on jm.id_especialidade = je.id where jm.id = ?";
        List<RelatorioMedico> relatorioMedico = new ArrayList<>();
        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, idMedico);
            rs = ps.executeQuery();
            while (rs.next()) {
            	relatorioMedico.add(new RelatorioMedico(
            			rs.getString("NOME_MEDICO"), rs.getString("NOME_PACIENTE"), rs.getDate("DATA_CONSULTA"), rs.getDouble("VALOR_CONSULTA")));
            }
        } catch (SQLException e) {
            System.out.println("Erro ao consultar médico por ID\n" + e);
        } finally {
            fecharRecursos();
        }

        return relatorioMedico; // Retorna null se não encontrar o médico com o ID fornecido
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
