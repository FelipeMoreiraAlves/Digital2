<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Carros</title>
</head>
<body>
	<div class="container mt-5">
		<h1>Cadastrar Carros</h1>

		<form class="border p-5 mt-5" method="post" action="cadastrar">
			<div class="form-group">
				<label for="modelo">Modelo</label> <input type="text"
					placeholder="Digite o modelo" id="modelo" name="modelo"
					class="form-control col-3">
			</div>
			<div class="form-group">
				<label for="marca">Marca</label> <input type="text"
					placeholder="Digite a marca" id="marca" name="marca"
					class="form-control col-3">
			</div>
			<div class="form-group">
				<input type="checkbox" id="novo" name="novo"> <label
					for="novo">Novo</label>
			</div>

			<div class="custom-control custom-radio mt-2">
				<input type="radio" id="automatico" name="cambio" value="AUTOMATICO"
					class="custom-control-input "> <label
					class="custom-control-label" for="automatico">Automático</label>
			</div>
			<div class="custom-control custom-radio">
				<input type="radio" id="manual" name="cambio" value="MANUAL"
					class="custom-control-input "> <label
					class="custom-control-label" for="manual">Manual</label>
			</div>

			<div class="form-group mt-3">
				<label for="ano">Ano</label> <input type="text" id="ano" name="ano"
					placeholder="Digite o ano" class="form-control col-2">
			</div>
			
			<div class="form-group">
				<input type="Submit" class="btn btn-primary" value="Cadastrar" >
			</div>

		</form>
	</div>





	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>