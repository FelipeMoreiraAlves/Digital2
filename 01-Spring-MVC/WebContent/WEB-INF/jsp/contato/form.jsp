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
<title>Contato</title>
</head>
<body>

	<div class="container mt-5">
		<h1>Contato</h1>

		<form action="enviar" method="post">

			<div class="form-group mt-3">
				<label for="nome">Nome</label> <input type="text" id="nome"
					name="nome" class="form-control" placeholder="Digite o Nome">
			</div>
			<div class="form-group">
				<label for="msg">Mensagem</label>
				<textarea rows="5" cols="50" class="form-control" name="mensagem"
					id="msg"></textarea>
			</div>
			<div>
				<input type="submit" class="btn btn-success" value="Salvar">
			</div>

		</form>
	</div>
</body>
</html>