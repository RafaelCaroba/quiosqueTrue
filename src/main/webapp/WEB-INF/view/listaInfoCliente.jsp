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
			<th>Endereço</th>
			<th>E-mail</th>
			<th>E-mail</th>
			<th>Data Nasc.</th>
			<th>Alterar/Atualizar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${cliente }" var="c">
			<tr>
				<td>${c.id }</td>
				<td>${c.nome }</td>
				<td>${c.endereco }</td>
				<td>${c.email }</td>
				<td>${c.telefone }</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${c.dataNasc.time }"/></td>
				<td><a href="alterarCliente?idCliente=${c.id }" >Atualizar</a></td>
				<td><a href="excluirCliente?idCliente=${c.id }" onclick="return confirm('Deseja excluir?')">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>