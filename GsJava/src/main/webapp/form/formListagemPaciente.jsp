<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Cliente</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body class="d-flex align-items-center" style="flex-direction: column;">

	<div class="row">
		<div class="col-12">
			<h1>
				Olá
				<c:out value="${usuario.nome}"></c:out>
			</h1>
		</div>
	</div>
	<div class="row w-100">
		<div class="col-6 d-flex justify-content-center">
			<form style="background-color: transparent; border: none; padding: 0px"
				method="get" action="formAgendarConsulta.jsp">
				<div>
					<button class="btn btn-dark" type="submit">Agendar consulta</button>
				</div>
		</form>
		</div>
		<div class="col-6 d-flex justify-content-center">
			<form
				style="background-color: transparent; border: none; padding: 0px"
				method="get" action="../consultasMarcadas">
				<div>
					<button class="btn btn-dark" type="submit">
						Consultas Marcadas</a>
				</div>
			</form>
		</div>
	</div>
	<script src="../js/Cadastro.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>

</html>