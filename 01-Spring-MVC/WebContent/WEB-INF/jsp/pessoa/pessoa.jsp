<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pessoa</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

</head>
<body>
	<div class="container mt-5">
		<h1>Cadastrar Pessoa</h1>

		<form action="cadastrar" method="post">

			<div class="form-group mt-3">
				<label for="nome">Nome</label> <input type="text" id="nome"
					name="nome" class="form-control" placeholder="Digite o Nome">
			</div>
			<div class="form-group">
				<label for="idade">Idade</label> <input type="text" id="idade"
					name="idade" class="form-control" placeholder="Digite a idade">
			</div>
			<div class="form-group">
				<input type="checkbox" id="aposentado" name="aposentado"> <label
					for="aposentado">Aposentado</label>
			</div>
			<div>
				<input type="submit" class="btn btn-primary" value="Cadastrar">
			</div>

		</form>
	</div>
</body>
</html>