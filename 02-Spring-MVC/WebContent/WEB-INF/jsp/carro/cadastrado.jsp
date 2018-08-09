<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrado</title>
</head>
<body>
	<h1>${msg }</h1>
	
	<p>${car.modelo }</p>
	<p>${car.marca }</p>
	<p>${car.novo ? "Novo" : "Semi-Novo" }</p>
	<p>${car.cambio }</p>
	<p>${car.ano }</p>
	
</body>
</html>