<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Cadastro de Marca">
<table class="table">
<tr>
	<th>Modelo</th>
	<th>Marca</th>
	<th>Data de Fabricação</th>
	<th>Completo</th>
	<th>Tipo Combustivel</th>	
</tr>
<c:forEach items="${carros}" var="c">
	<tr>
		<td>${c.modelo }</td>
		<td>${c.marca.nome }</td>
		<td>
			<fmt:formatDate value="${c.dataFabricacao.time }"
			pattern="dd/MM/yyyy"/>
		</td>
		<td>${c.completo ?"Sim" : "Não" }</td>
		<td>${c.combustivel.label }</td>
	</tr>
</c:forEach>
</table>


</tags:template>