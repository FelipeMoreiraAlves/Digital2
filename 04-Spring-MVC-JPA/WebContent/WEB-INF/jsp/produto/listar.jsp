<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<tags:template titulo="Cadastrar">
	<jsp:body>
	
	<div class="container">
		<h1>Lista de Produtos</h1>
		<c:if test="${not empty msg }">
			<div class="alert alert-success">${msg }</div>
		</c:if>
		<table class="table border-3">
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Preço</th>
				<th>Perecivel</th>
				<th>Ação</th>
			</tr>
			<c:forEach items="${produtos }" var="produto">
				<tr>
					<td>${produto.codigo }</td>
					<td>${produto.nome }</td>
					<td>R$ ${produto.preco }</td>
					<td>${produto.perecivel ? "Perecivel" : "Não perecivel" }</td>
					<td><a
							href="<c:url value="/produto/editar/${produto.codigo }"/>"
							class="btn btn-primary">Editar</a>
						<button onclick="codigoProduto.value = ${produto.codigo}" type="button" class="btn btn-danger"
								data-toggle="modal" data-target="#exampleModal">
  						Apagar
					</button>
					</td>
				</tr>
			</c:forEach>
		</table>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apagar ?</h5>
        <button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja mesmo apagar ?
      </div>
      <div class="modal-footer">
      	<form action="<c:url value="/produto/excluir"/>" method="post">
      		<input type="hidden" id="codigoProduto" name="codigo">
	        <button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
	        <button type="submit" class="btn btn-danger">Apagar</button>
      	</form>
      </div>
    </div>
  </div>
</div>
		
	</div>

</jsp:body>
</tags:template>