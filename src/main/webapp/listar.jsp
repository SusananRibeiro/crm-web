<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<IDOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sistema CRM</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		Integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCG5gtU4mk92HdvYe+M/SXH301p5ILy+dW9+nJ0Z" 
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-ENjd04Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" 
		integrity="sha384-zYPOMqeu1DAVkHiLqwBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" 
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" 
		integrity="sha384-Y4o0pwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" 
		crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h3>CRM/WEB Cadastro de Clientes</h3> 
		<%@include file="navbar.jsp"%>
		<p style="color:blue"><% String mensagem = (String) request.getAttribute("mensagem");
			if(mensagem != null) {
				out.println(mensagem);
			}
		%></p>
		<div class="mb-3">
			<h6><label for="noneFormControlInput" class="form-label">None:</label></h6> 
			
			<%
				String nome = (String) request.getAttribute("nome");
					if(nome != null) {
						out.println(nome);
					}
			%>
		</div>
		<div classe"ab-3">
			<h6><label for="cpfFormControlInput" class="form-label">CPF:</label></h6> 
			
			<%
				String cpf = (String) request.getAttribute("cpf");
					if(cpf != null) {
						out.println(cpf);
					}
			%>
	
		</div>
		<div class="mb-3">
			<h6><label for="emailFormControlInput" class="form-label">E-mail:</label></h6>
			 
			<%
				String email = (String) request.getAttribute("email");
					if(email != null) {
						out.println(email);
					}
			%>			
		</div>
		<div class="mb-3">
			<h6><label for="telefoneFormControlInput" class="form-label">Telefone:</label></h6>
			
			<%
				String telefone = (String) request.getAttribute("telefone");
					if(telefone != null) {
						out.println(telefone);
					}
			%>
			
		</div>
		<div class="mb-3">
			<h6><label for="dataFormControlInput" class="form-label">Data de Nascimento:</label></h6> 
			
			<%
				String dataNascimento = (String) request.getAttribute("dataNascimento");
					if(dataNascimento != null) {
						out.println(dataNascimento);
					}
			%>
			
		</div>
		<div class="mb-3">
			<h6><label for="dataFormControlInput" class="form-label">Gênero:</label></h6> 
						
			<%
				String genero = (String) request.getAttribute("genero");
					if(genero != null) {
						out.println(genero);
					}
			%>
		</div>
		<div class="mb-3">
			<h6><label for="enderecoFormControlTextarea" class="form-label">Endereco:</label></h6> 
			
			<%
				String endereco = (String) request.getAttribute("endereco");
					if(endereco != null) {
						out.println(endereco);
					}
			%>
		</div>
	</div>
</body> 
</html>

