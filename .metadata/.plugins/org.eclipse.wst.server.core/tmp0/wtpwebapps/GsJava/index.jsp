<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HapVida - Suporte</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/estilo.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>

<body>
	<div class="container">

		<form method="post" action="login">
			<h1>Login</h1>
			<div class="form-floating mb-3">
				<input type="text" name="floatingInputLogin"
					class="form-control w-100" id="floatingInputLogin"
					placeholder="name@example.com"> <label
					for="floatingInputLogin">Usuario</label>
			</div>
			<div class="form-floating mb-3">
				<input type="password" name="floatingInputSenha"
					class="form-control w-100" id="floatingInputSenha"
					placeholder="MinhaSenha"> <label for="floatingInput">Senha</label>
			</div>
			<div class="d-flex justify-content-center row">
				<div class="col-12">

					<button type="submit" class="btn btn-primary w-100">Entrar</button>
				</div>
				<div class="col-12 text-center pt-3">
					<p>
						<a href="form/formCadastro.jsp">Ainda não sou cadastrado</a>
					</p>

				</div>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>

</html>