<%@page import="entidade.Medico"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cliente - Agendar Consulta</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>

<body>
<script>
	listaMedicos(){
		var select = document.getElementById("selectMedicos").value;
		var lista = document.getElementById("listaMedicos"+ select);
		console.log(lista);
		lista.classList.remove("d-none");
	}
</script>
	<jsp:include page="../listarMedicos"></jsp:include>
	<div
		class="container h-100 w-50 d-flex justify-content-center align-items-center">
<h1>Infelizmente nao consegui desenvolver essa tela, eu quis fazer o select do médico aparecer dinamicamente com base na especialidade selecionada
 porem nao consegui fazer com que o onchange() chamasse a funcao do js e tambem nao consegui fazer no java o select aparecer. Tentei fazer com o c:if
  porem descobri que ele executa no momento que a tela carrega e nao é dinamica, Boas festas.</h1>
		<%-- <form
			style="border: 2px solid #333; border-radius: 10px; padding: 40px">
			<h1 class="text-center">Agendar consulta</h1>
			<!-- Aqui o cara seleciona a especialidade e a gente carrega a lista de médicos que atendem aquela especialidade -->
			<div class="row mt-2">
				<select id="selectMedicos" name="selectMedicos" onchange="listaMedicos()">
					<option disabled selected>Selecione uma especialidade</option>
					<option value="1">Cardiologia</option>
					<option value="2">Neurologista</option>
					<option value="3">Psiquiatria</option>
				</select>
			</div>


				<div class="row mt-2">
					<select id="listaMedicos1" class="d-none" disabled>
						<option disabled selected>Selecione um médico</option>
						<c:forEach var="item" items="${listaMedicosCardiologistas}">
							<option value="${item.id}"><c:out value="${item.nome}"></c:out>
						</c:forEach>
					</select>
				</div>

			<c:if test="${medicos == 2}">
				<div class="row mt-2 d-none">
					<select id="listaMedicos2" disabled>
						<option disabled selected>Selecione um médico</option>
						<c:forEach var="item" items="${listaMedicosNeurologia}">
							<option value="${item.id}"><c:out value="${item.nome}"></c:out>
						</c:forEach>
					</select>
				</div>
			</c:if>
			<c:if test="${medicos == 3}">
				<div class="row mt-2 d-none">
					<select id="listaMedicos3" disabled>
						<option disabled selected>Selecione um médico</option>
						<c:forEach var="item" items="${listaMedicosPsiquiatra}">
							<option value="${item.id}"><c:out value="${item.nome}"></c:out>
						</c:forEach>
					</select>
				</div>
			</c:if>


			<div class="row mt-2">
				<label for="dataConsulta" class="form-label">Data Consulta</label> <input
					type="date" name="dataConsulta" id="dataConsulta"
					class="w-100 form-control" aria-describedby="passwordHelpBlock">
			</div>
			<div class="d-flex justify-content-center row mt-3">
				<div class="col-12">
					<button type="submit" class="btn btn-primary w-100">Marcar
						consulta</button>
				</div>
				<div class="col-12 text-center pt-3">
					<p>
						<a href="formListagemPaciente.jsp">Voltar</a>
					</p>

				</div>
			</div>
		</form> --%>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>

</html>