package entidade;

public class Consulta {
    private int id;
    private Paciente paciente;
    private Medico medico;
    private int diaSemana;  // Representação numérica do dia da semana (1 = domingo, 2 = segunda-feira, ..., 7 = sábado)

    // Outros atributos e métodos necessários

    public Consulta(int id, Paciente paciente, Medico medico, int diaSemana) {
        this.id = id;
        this.paciente = paciente;
        this.medico = medico;
        this.diaSemana = diaSemana;
        // Inicialize outros atributos, se necessário
    }

    // Métodos Getter e Setter

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public Medico getMedico() {
        return medico;
    }

    public void setMedico(Medico medico) {
        this.medico = medico;
    }

    public int getDiaSemana() {
        return diaSemana;
    }

    public void setDiaSemana(int diaSemana) {
        this.diaSemana = diaSemana;
    }

    // Outros métodos, se necessário

    public double calcularValorConsulta() {
        // Exemplo de lógica para calcular o valor da consulta
        String especialidade = medico.getEspecialidade().getNome();
        double valorBase = 0.0;

        switch (especialidade) {
            case "cardiologia":
                valorBase = 700.0;
                break;
            case "neurologia":
                valorBase = 800.0;
                break;
            case "psiquiatria":
                valorBase = 1000.0;
                break;
            // Adicione outras especialidades, se necessário
        }

        // Exemplo: Acréscimo de 10% se a consulta for agendada para um dia específico
        // (você pode ajustar isso conforme necessário)
        if (diaSemana == 1 || diaSemana == 7) {  // Domingo ou sábado
            valorBase *= 1.1;
        }

        return valorBase;
    }
}
