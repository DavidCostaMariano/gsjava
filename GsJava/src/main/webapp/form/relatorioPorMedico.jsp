<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Relatório por Paciente</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
</head>
<body>
	<h1>Relatório por Médico</h1>

	<c:if test="${not empty medico}">
		<p>Nome do Médico: ${medico.nome}</p>
		<p>CRM: ${medico.crm}</p>
		<p>Especialidade: ${medico.especialidade.nome}</p>
		<!-- Adicione outras informações do médico conforme necessário -->
	</c:if>

	<!-- Adicione mais conteúdo conforme necessário -->

</body>
</html>
