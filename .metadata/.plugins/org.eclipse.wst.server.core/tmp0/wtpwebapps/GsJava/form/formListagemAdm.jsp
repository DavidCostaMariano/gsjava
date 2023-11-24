<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listagem Administrativa</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="d-flex align-items-center" style="flex-direction: column;">

<div class="container">
    <div class="row">
        <div class="col-12">
            <h1>Área Administrativa</h1>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <h2>Consultas Realizadas</h2>
            <!-- Tabela para exibir relatório de consultas -->
            <table class="table">
                <thead>
                <tr>
                    <th>Nome do Paciente</th>
                    <th>Data da Consulta</th>
                    <th>Médico</th>
                    <th>Especialidade</th>
                    <th>Valor da Consulta</th>
                </tr>
                </thead>
                <tbody>
                    <!-- Aqui você pode usar JSTL ou scriptlet para iterar sobre a lista de consultas e exibi-las na tabela -->
                    <!-- Exemplo: -->
                    <c:forEach var="consulta" items="${listaConsultas}">
                        <tr>
                            <td>${consulta.nomePaciente}</td>
                            <td>${consulta.dataConsulta}</td>
                            <td>${consulta.nomeMedico}</td>
                            <td>${consulta.especialidade}</td>
                            <td>${consulta.valorConsulta}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Outras seções ou relatórios podem ser adicionados conforme necessário -->

</div>

<script src="../js/Cadastro.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>
</html>
