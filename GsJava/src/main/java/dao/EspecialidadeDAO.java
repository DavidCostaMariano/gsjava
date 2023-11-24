package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import conexao.Conexao;
import entidade.Especialidade;

public class EspecialidadeDAO {
	
	private PreparedStatement ps;
    private ResultSet rs;
    private String sql;
    private Conexao conexao;

    public EspecialidadeDAO() {
        conexao = new Conexao();
    }
	public List<Especialidade> listarEspecialidade() {
        sql = "SELECT * from java_especialidade";
        List<Especialidade> listaEspecialidade = new LinkedList<>();

        try (Connection connection = conexao.conectar()) {
            ps = connection.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
            	listaEspecialidade.add(new Especialidade(rs.getInt("id"), rs.getString("especialidade")));
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar os medicos\n" + e);
        } 
        
        return listaEspecialidade;
    }
}
