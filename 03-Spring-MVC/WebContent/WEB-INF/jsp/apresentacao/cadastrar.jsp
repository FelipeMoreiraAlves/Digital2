<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastrar">

	<jsp:body>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
		<form action="cadastrar" method="post">
		<div class="container border p-3">			
				<div class="form-group col-4">
					<label for="grupo">Grupo</label>
					<input type="text" class="form-control" name="grupo" id="grupo">
				</div>
				<div class="form-group col-4">
					<label for="duracao">Duração da Apresentação</label>
					<input type="text" class="form-control" name="duracao" id="duracao">
				</div>
				<div class="form-group col-4">
					<label for="descricao">Descrição</label>
					<textarea rows="10" cols="20" class="form-control" name="descricao"
						id="descricao"></textarea>
				</div>
				<div class="form-group">
					<input type="checkbox" name="apresentado" id="apresentado">
					<label for="apresentado">Apresentado</label>
				</div>
				<input type="submit" value="Cadastrar" class="btn btn-primary">
			</div>
		</form>
	
	</jsp:body>

</tags:template>