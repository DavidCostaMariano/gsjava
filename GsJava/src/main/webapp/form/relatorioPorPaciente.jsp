<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title>Relatório por Paciente</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body class="d-flex align-items-center" style="height: 100vh">
	<jsp:include page="../listarPacientes"></jsp:include>


	<c:if test="${empty relatorio}">
		<div class="container">
			<form name="formMedico" action="../relatorioPorPaciente">
				<h1>Selecione um paciente</h1>
				<select id="selectMedico" name="selectMedico" class="w-100"
					onchange="document.formMedico.submit();">
					<option disabled selected value="0">Selecione um paciente</option>
					<c:forEach var="item" items="${listaPacientes}">
						<option value="${item.id}"><c:out value="${item.nome}"></c:out>
					</c:forEach>
				</select>
			</form>
		</div>
	</c:if>

	<c:if test="${not empty relatorio}">
	<div class="container">
		<table class="table table-responsive table-dark table-striped">
			<thead>
				<tr>
					<th scope="col">Nome Medico</th>
					<th scope="col">CRM</th>
					<th scope="col">Especialidade</th>
					<th scope="col">Data consulta</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${relatorio}">
					<tr>
						<td><c:out value="${item.nome_medico}"></c:out></td>
						<td><c:out value="${item.crm}"></c:out></td>
						<td><c:out value="${item.especialidade}"></c:out></td>
						<td><c:out value="${item.data_consulta}"></c:out></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<a href="/form/relatorioPorPaciente.jsp"><- Voltar</a>
	</div>
	</c:if>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>