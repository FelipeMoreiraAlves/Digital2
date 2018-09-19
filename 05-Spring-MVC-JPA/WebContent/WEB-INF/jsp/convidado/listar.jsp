<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<tags:template titulo="Lista">
	<jsp:body>
	
	<div class="container">
		<h1>Lista de Convidados</h1>
		<c:if test="${not empty msg }">
			<div class="alert alert-success">${msg }</div>
		</c:if>
		<table class="table border-3">
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Presença</th>
				<th class="text-center">Ações</th>
			</tr>
			<c:forEach items="${convidados }" var="con">
				<tr>
					<td>${con.codigo}</td>
					<td>${con.nome}</td>
					<td>${con.email}</td>
					<td>${con.confirmado ? "Confirmado" : "Não confirmado"}</td>
					<td><a
							href="<c:url value="/convidado/editar/${con.codigo }"/>"
							class="btn btn-outline-primary">Editar</a>
						<button onclick="codigoConvidado.value = ${con.codigo}"
								type="button" class="btn btn-outline-danger" data-toggle="modal"
								data-target="#apagar">
  						Apagar
					</button>
					<button onclick="codigoConvidado.value = ${con.codigo}"
								type="button" class="btn btn-outline-success" data-toggle="modal"
								data-target="#confirmar">
  						Confirmar
					</button>
					</td>
				</tr>
			</c:forEach>
		</table>
			<div class="modal fade" id="apagar" tabindex="-1" role="dialog"
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
      	<form action="<c:url value="/convidado/excluir"/>" method="post">
      		<input type="hidden" id="codigoConvidado" name="codigo">
	        <button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
	        <button type="submit" class="btn btn-danger">Apagar</button>
      	</form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="confirmar" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmar Presença ?</h5>
        <button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Confirmação de presença
      </div>
      <div class="modal-footer">
      	<form action="<c:url value="/convidado/excluir"/>" method="post">
      		<input type="hidden" id="codigoConvidado" name="codigo">
	        <button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
	        <button type="submit" class="btn btn-success">Confirmar</button>
      	</form>
      </div>
    </div>
  </div>
</div>

	</div>

</jsp:body>
</tags:template>
