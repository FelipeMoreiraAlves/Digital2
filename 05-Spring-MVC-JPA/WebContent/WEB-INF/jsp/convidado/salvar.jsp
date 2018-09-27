<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<tags:template titulo="Cadastrar">
	<jsp:body>
	
	<div class="container">
		<h1>Cadastrar Convidado</h1>
		<form class="form" method="post" action="cadastrar">
			<div class="form-group">
				<label for="nome">Nome</label>
				<input type="text" id="nome" name="nome" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="text" id="email" name="email" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="data">Data</label>
				<input type="text" id="data" name="dataAniversario" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="checkbox" id="confirmado" value="false" name="confirmado"/>
				<label for="confirmado">Confirmado</label>
			</div>
			<input type="submit" class="btn btn-primary" value="Cadastrar"> 
		</form>
	</div>

</jsp:body>
</tags:template>
