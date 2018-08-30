<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- Caminho para buscar o template --%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tags:template titulo="Editar Produto">

	<h1>Editar Produto</h1>

	<div class="container">
		<c:url var="link" value="/produto/editar" />
		<form:form action="${link }" method="post" commandName="produto">
			<form:hidden path="${codigo }" />
			<div class="form-group">
				<form:label path="codigo">Id</form:label>
				<form:input path="codigo" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="nome">Nome</form:label>
				<form:input path="nome" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:label path="preco">Preco</form:label>
				<form:input path="preco" cssClass="form-control" />
			</div>
			<div class="form-group">
				<form:checkbox path="perecivel" />
				<form:label path="perecivel">Perecivel</form:label>
			</div>
			<div class="form-group">
				<input type="submit" value="Salvar" class="btn btn-primary" />
			</div>
		</form:form>
	</div>
	



</tags:template>