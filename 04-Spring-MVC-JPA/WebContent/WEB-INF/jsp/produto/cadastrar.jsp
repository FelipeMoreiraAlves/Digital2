<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- Caminho para buscar o template --%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastrar">
	<jsp:body>
	<h1>Cadastro de Produto</h1>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
		<form action="cadastrar" method="post">
		<div class="container border p-3">			
				<div class="form-group col-4">
					<label for="nome">Nome</label>
					<input type="text" class="form-control" name="nome" id="nome">
				</div>
				<div class="form-group col-4">
					<label for="preco">Preço</label>
					<input type="text" class="form-control" name="preco" id="preco">
				</div>
				<div class="form-group">
					<input type="checkbox" name="perecivel" id="perecivel">
					<label for="perecivel">Perecível</label>
				</div>
				<input type="submit" value="Cadastrar" class="btn btn-primary">
			</div>
		</form>
	
	</jsp:body>

</tags:template>