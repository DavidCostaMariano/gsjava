package entidade;

import java.util.Date;

public class RelatorioPaciente {

	private String nome_paciente;
	
	private String nome_medico;
	
	private String especialidade;

	private String crm;
	
	private Date data_consulta;
	
	private double valor_consulta;
	
	public RelatorioPaciente(String nome_paciente, String nome_medico,String especialidade, String crm, Date data_consulta,
			double valor_consulta) {
		super();
		this.nome_paciente = nome_paciente;
		this.nome_medico = nome_medico;
		this.especialidade = especialidade;
		this.crm = crm;
		this.data_consulta = data_consulta;
		this.valor_consulta = valor_consulta;
	}
	public RelatorioPaciente() {
		
	}

	public String getNome_medico() {
		return nome_medico;
	}

	public void setNome_medico(String nome_medico) {
		this.nome_medico = nome_medico;
	}
	
	

	public String getEspecialidade() {
		return especialidade;
	}
	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}
	public String getNome_paciente() {
		return nome_paciente;
	}

	public void setNome_paciente(String nome_paciente) {
		this.nome_paciente = nome_paciente;
	}

	public Date getData_consulta() {
		return data_consulta;
	}

	public void setData_consulta(Date data_consulta) {
		this.data_consulta = data_consulta;
	}

	public double getValor_consulta() {
		return valor_consulta;
	}

	public void setValor_consulta(double valor_consulta) {
		this.valor_consulta = valor_consulta;
	}
	public String getCrm() {
		return crm;
	}
	public void setCrm(String crm) {
		this.crm = crm;
	}

	
	
	
}
