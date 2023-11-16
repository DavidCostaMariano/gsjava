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
	private conexao.Conexao conexao;
	
	public MedicoDAO() {
		conexao = new Conexao();
	}
	
	public List<Medico> listarMedicos() {
		sql = "select jm.*, je.especialidade from java_medico jm join java_especialidade je on jm.id_especialidade = je.id";
		List<Medico> listaMedicos = new LinkedList<>();
		
		try (Connection connection = conexao.conectar()) {
			ps = connection.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				listaMedicos.add(new Medico(rs.getInt("id"),rs.getString("nome"), rs.getString("crm"), new Especialidade(rs.getInt("id_especialidade"), rs.getString("especialidade"))));
			}
			ps.close();
			rs.close();
		} catch (SQLException e) {
			System.out.println("Erro ao listar os medicos\n" + e);
		}		
		return listaMedicos;
	}
}
