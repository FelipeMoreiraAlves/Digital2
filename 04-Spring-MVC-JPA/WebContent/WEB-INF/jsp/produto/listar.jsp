<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<tags:template titulo="Cadastrar">
	<jsp:body>
	<div class="container">
		<h1>Lista de Produtos</h1>
		<table class="table border-3">
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Preço</th>
				<th>Perecivel</th>
			</tr>
			<c:forEach items="${produtos }" var="produto">
				<tr>
					<td>${produto.codigo }</td>
					<td>${produto.nome }</td>
					<td>R$ ${produto.preco }</td>
					<td>${produto.perecivel ? "Perecivel" : "Não perecivel" }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</jsp:body>
</tags:template>