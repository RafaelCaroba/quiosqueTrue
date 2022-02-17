<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Lista de Produtos</h1>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Tipo</th>
			<th>Validade</th>
			<th>Vencido?</th>
			<th>Ver+</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${cliente }" var="p">
			<tr>
				<td>${p.id }</td>
				<td>${p.nome }</td>
				<td>${p.endereco }</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${p.dataNasc.time }"/></td>
				<td></td>
				<td></td>
				<td><a href="excluirProduto?idProduto=${p.id }" onclick="return confirm('Deseja excluir?')">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>