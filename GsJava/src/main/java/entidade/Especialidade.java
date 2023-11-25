package entidade;

public class Especialidade {
	private Integer id;
	private String especialidade;
	
	
	public Especialidade(int id, String especialidade) {
		super();
		this.id = id;
		this.especialidade = especialidade;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEspecialidade() {
		return especialidade;
	}
	

}
