package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conexao.Conexao;
import entidade.Paciente;
import entidade.RelatorioMedico;
import entidade.RelatorioPaciente;


public class PacienteDAO {
	private PreparedStatement ps;
	private ResultSet rs;
	private String sql;
	private conexao.Conexao conexao;
	
	public PacienteDAO() {
		conexao = new Conexao();
	}
	
	public boolean inserir(Paciente paciente) {
		sql = "insert into java_paciente values(id_paciente_seq.nextval, ?, ?, ?, ?, ?)";
		
		try (Connection connection = conexao.conectar()) {
			ps = connection.prepareStatement(sql);
			ps.setString(1, paciente.getNome());
			ps.setString(2, paciente.getCpf());
			ps.setString(3, paciente.getEmail());
			ps.setString(4, paciente.getUsername());
			ps.setString(5, paciente.getSenha());
			ps.execute();
			ps.close();
			return true;
		} catch (SQLException e) {
			System.out.println("Erro ao inserir no banco de dados\n" + e);
			return false;
		}		
	}
	public boolean findUserByUsername(String username) {
		sql = "select count(*) pacientes from java_paciente where username = ?";
		
		try (Connection connection = conexao.conectar()) {
			
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				ps.close();
				rs.close();
				return true;
			}
		} catch (SQLException e) {
			System.out.println("Erro ao procurar o usuario pelo nome dele\n" + e);
		}	
		return false;
	}

	public Paciente login(String username, String senha) {
		sql = "select * from java_paciente where username = ? and senha = ?";
		
		try (Connection connection = conexao.conectar()) {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, senha);
			rs = ps.executeQuery();
			if(rs.next()) {		
				Paciente paciente = new Paciente(rs.getInt("id"), rs.getString("nome"), rs.getString("cpf"), rs.getString("email"), rs.getString("username"), rs.getString("senha"));
				ps.close();
				rs.close();
				return paciente;
			}
		} catch (SQLException e) {
			System.out.println("Erro ao procurar o usuario para fazer login\n" + e);
		}	
		return null;
	}

    public List<RelatorioPaciente> consultarPorId(int idPaciente) {
        sql = "SELECT jp.nome nome_paciente, jm.nome nome_medico, jm.crm, je.especialidade,  jc.data_consulta from java_consulta jc inner join java_medico jm on jc.id_medico = jm.id inner join java_paciente jp on jc.id_paciente = jp.id inner join java_especialidade je on jm.id_especialidade = je.id where jm.id = ?";
        List<RelatorioPaciente> relatorioPaciente = new ArrayList<>();
        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, idPaciente);
            rs = ps.executeQuery();
            while (rs.next()) {
            	relatorioPaciente.add(new RelatorioPaciente(
            			rs.getString("NOME_PACIENTE"), rs.getString("NOME_MEDICO"), rs.getString("crm"),rs.getString("especialidade"), rs.getDate("DATA_CONSULTA"), rs.getDouble("valor_consulta")));
            }
        } catch (SQLException e) {
            System.out.println("Erro ao consultar médico por ID\n" + e);
        }

        return relatorioPaciente; // Retorna null se não encontrar o médico com o ID fornecido
    }

	
}
