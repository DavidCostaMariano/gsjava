<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

	<div class="container">
		<!--FORMULÁRIO DE CADASTRO-->
		<form method="post" action="../cadastrar">
			<h1>Cadastro</h1>


			<div class="form-floating mb-3">
				<input type="text" class="form-control w-100" name="floatingInputNome" id="floatingInputNome" placeholder="nome">
				<label for="floatingInputNome">Nome</label>
			</div>

			<div class="form-floating mb-3">
				<input type="text" class="form-control w-100" name="floatingInputCpf" id="floatingInputCpf" placeholder="12345678901">
				<label for="floatingInputCpf">Cpf</label>
			</div>

			<div class="form-floating mb-3">
				<input type="email" class="form-control w-100" name="floatingInputEmail" id="floatingInputEmail" placeholder="name@example.com">
				<label for="floatingInputEmail">Email</label>
			</div>

			<div class="form-floating mb-3">
				<input type="text" class="form-control w-100" name="floatingInputUsuario" id="floatingInputUsuario" placeholder="MeuLogin">
				<label for="floatingInputUsuario">Usuario (login)</label>
			</div>
			
			<div class="form-floating mb-3">
				<input type="password" class="form-control w-100" name="floatingInputSenha" id="floatingInputSenha" placeholder="MinhaSenha">
				<label for="floatingInputSenha">Senha</label>
			</div>

			<div class="d-flex justify-content-center row">
				<div class="col-12">
					<button class="btn btn-primary w-100" type="submit">Cadastrar</button>
					<!-- <button class="btn btn-primary w-100" onclick="validaCadastro()" type="submit">Cadastrar</button> -->
				</div>
				<div class="col-12 text-center pt-3">
					<p>
						<a href="../index.jsp">Já sou cadastrado</a>
					</p>

				</div>
			</div>

		</form>
	</div>
	<script src="../js/Cadastro.js"></script>

</body>

</html>