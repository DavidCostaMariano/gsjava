<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administração</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body>
	<h1>Cadastros</h1>
	<hr>
	<div class="row mt-5">
		<div class="col-6 d-flex justify-content-end">
			<div class="me-2">
				<a href="formCadastro.jsp">Cadastrar paciente</a>
			</div>
		</div>
		<div class="col-6">
			<div class="ms-2">
				<a href="formCadastroMedico.jsp">Cadastrar médico</a>
			</div>
		</div>
	</div>
	<h1 class="mt-5">Relatórios</h1>
	<hr>
	<div class="row mt-5">
		<div class="col-4 d-flex justify-content-center">
			<div class="ms-2">
				<a href="relatorioPorMedico.jsp">Médico</a>
			</div>
		</div>
		<div class="col-4 d-flex justify-content-center">
			<div class="ms-2">
				<a href="relatorioPorPaciente.jsp">Paciente</a>
			</div>
		</div>
		<div class="col-4 d-flex justify-content-center">
			<div class="ms-2">
				<a href="RelatorioGeral.jsp">Área administrativa</a>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>

</html>