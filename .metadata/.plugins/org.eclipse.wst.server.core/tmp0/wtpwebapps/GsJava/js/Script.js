function validaCadastro(){
	var nome = document.getElementById("floatingInputNome");
	var email = document.getElementById("floatingInputEmail").value;
	var cpf = document.getElementById("floatingInputCpf").value;
	var senha = document.getElementById("floatingInputSenha").value;
	var usuario = document.getElementById("floatingInputUsuario").value;
	if(nome.value.length > 50){
		window.alert("NOME GRANDE DA PORRA HEIN PARCEIRO");		
	}else if(!email.contains("@") && !email.contains(".com")){
		window.alert("Esse email ta esquisito...");
	}else if(senha.length > 20){
		window.alert("Esse email ta grande hein...");
	}
		window.alert(nome.length);
}
function analisa(){
	var nome = document.getElementById("floatingInputNome");
	if(nome.value.length > 50){
		nome.classList.add("alert");
	}
}

function listarMedico(){
    var selectMedicos = document.getElementById("listaMedicos");
    selectMedicos.removeAttribute("disabled")
}