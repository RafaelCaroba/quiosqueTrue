<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastro</title>
<link rel="stylesheet" href="estiloForm.css">
</head>
<body>
	<main>
		<h1>Fa?a seu Cadastro</h1>
		<div class="social-media">

			<form action="salvarCliente">
			
			<input type="hidden" id="id" name="id" value="${cliente.id }">
				
				<label for="nome"> 
				<span>Nome</span> 
				<input type="text"id="nome" name="nome" required="required" value="${cliente.nome }">
				</label> 
				
				<label for="email"> 
				<span>E-mail</span> 
				<input type="email" id="email" name="email" required="required" value="${cliente.email }">
				</label> 
				
				<label for="telefone"> 
				<span>Telefone/Celular</span> 
				<input type="text" id="telefone" name="telefone" required="required" value="${cliente.telefone }">
				</label> 
				
				<label for="endereco"> 
				<span>Endere?o</span> 
				<input type="text" id="endereco" name="endereco" required="required" value="${cliente.endereco }">
				</label> 
				
				<label for="idade"> 
				<span>Data de Nascimento</span> 
				<input type="date" id="data_nascimento" name="dataNasc" required="required" value="<fmt:formatDate 
				pattern="yyyy-MM-dd" value="${cliente.dataNasc.time}"/>">
				</label> 
				
				<label for="prod_interesse"> 
				<span>Produtos de interesse</span> 
				<select name="prodInteresse">
						<option value="Chinelos">Chinelos</option>
						<option value="Sapatos">Sapatos</option>
						<option value="Sandalias">Sand?lias</option>
						<option value="Outro">Outro</option>
				</select> 
				</label>
				<label for="genero"> 
				<span>Genero</span> 
				<select name="genero">
							<option value="Masc">Masculino</option>
							<option value="Fem">Feminino</option>
							<option value="Outro">Outro</option>
					</select>
				</label> <input type="submit" value="CADASTRAR" id="button">
			</form>
			</div>
	</main>
	<section class="images">
		<img src="IMG/mobile3.svg.svg" alt="Mobile">
		<div class="circle"></div>
	</section>
</body>
</html>