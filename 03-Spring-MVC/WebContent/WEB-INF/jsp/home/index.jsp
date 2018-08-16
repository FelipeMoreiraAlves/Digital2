<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Home">

	<jsp:attribute name="scripts">
		<p>Algum jquery aqui...</p>
	</jsp:attribute>
	<jsp:body>
		<%--  Tudo que estiver aqui vai para o jsp:doBody do template --%>
	
		<h1>Página inicial</h1>
	</jsp:body>
</tags:template>