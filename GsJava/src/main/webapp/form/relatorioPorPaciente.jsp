<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Relatório por Paciente</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
</head>
<body>
    <h1>Relatório por Paciente</h1>

    <c:if test="${not empty paciente}">
        <p>Nome do Paciente: ${paciente.nome}</p>
        <p>CPF: ${paciente.cpf}</p>
        <!-- Adicione outras informações do paciente conforme necessário -->
    </c:if>

    <!-- Adicione mais conteúdo conforme necessário -->

</body>
</html>
