package entidade;

import java.util.Date;

public class Consulta {
    private String nomePaciente;
    private String nomeMedico;
    private String especialidade;
    private Date dataConsulta;
    private double valorConsulta;
    
    
	public Consulta(String nomePaciente, String nomeMedico, String especialidade, Date dataConsulta,
			double valorConsulta) {
		super();
		this.nomePaciente = nomePaciente;
		this.nomeMedico = nomeMedico;
		this.especialidade = especialidade;
		this.dataConsulta = dataConsulta;
		this.valorConsulta = valorConsulta;
	}
	public String getNomePaciente() {
		return nomePaciente;
	}
	public void setNomePaciente(String nomePaciente) {
		this.nomePaciente = nomePaciente;
	}
	public String getNomeMedico() {
		return nomeMedico;
	}
	public void setNomeMedico(String nomeMedico) {
		this.nomeMedico = nomeMedico;
	}
	public String getEspecialidade() {
		return especialidade;
	}
	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}
	public Date getDataConsulta() {
		return dataConsulta;
	}
	public void setDataConsulta(Date dataConsulta) {
		this.dataConsulta = dataConsulta;
	}
	public double getValorConsulta() {
		return valorConsulta;
	}
	public void setValorConsulta(double valorConsulta) {
		this.valorConsulta = valorConsulta;
	}


    // Outros atributos e métodos necessários
    
}
