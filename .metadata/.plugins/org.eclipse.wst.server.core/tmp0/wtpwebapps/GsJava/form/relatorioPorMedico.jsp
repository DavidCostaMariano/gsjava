<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Relatório por Médico</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body class="d-flex align-items-center" style="height: 100vh">
	<jsp:include page="../listarMedicos"></jsp:include>


	<c:if test="${empty relatorio}">
		<div class="container">
			<form name="formMedico" action="../relatorioPorMedico">
				<h1>Selecione um médico</h1>
				<select id="selectMedico" name="selectMedico" class="w-100"
					onchange="document.formMedico.submit();">
					<option disabled selected value="0">Selecione um médico</option>
					<c:forEach var="item" items="${listaMedicosCardiologistas}">
						<option value="${item.id}"><c:out value="${item.nome}"></c:out>
					</c:forEach>
					<c:forEach var="item" items="${listaMedicosNeurologia}">
						<option value="${item.id}"><c:out value="${item.nome}"></c:out>
					</c:forEach>
					<c:forEach var="item" items="${listaMedicosPsiquiatra}">
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
					<th scope="col">Nome Cliente</th>
					<th scope="col">Data consulta</th>
					<th scope="col">Valor da consulta</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${relatorio}">
					<tr>
						<td><c:out value="${item.nome_medico}"></c:out></td>
						<td><c:out value="${item.nome_paciente}"></c:out></td>
						<td><c:out value="${item.data_consulta}"></c:out></td>
						<td><c:out value="${item.valor_consulta}"></c:out></td>
					</tr>
				</c:forEach>
				<tr>
					<th scope="row" colspan="3">Total
					<td><c:out value="${valorTotal}"></c:out>
				</tr>
			</tbody>
		</table>
		<a href="form/opcoesAdm.jsp"><- Voltar</a>
	</div>
	</c:if>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
