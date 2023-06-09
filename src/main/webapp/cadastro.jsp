<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Sistema CRM</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 			
			rel="stylesheet"
			integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301pSILy+dN9+nJO"
			crossorigin"anonymous">
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ENjd04Dr2bkBIFxOpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
			crossorigin="anonymous"> </script>

		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
			integrity="sha384-zYPOMqeuIDAVkHiLqWBUTcbYfZ8osuINd6Z89ify25QV9guujx43ITvfi12/QExE"
			crossorigin="anonymous"> </script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" 
			integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
			crossorigin="anonymous"> </script>

	</head>
	<body>
		<div class="container">
			<h3>CRM/WEB Cadastro de Clientes</h3>
			<%@include file="navbar.jsp"%>
		<br>
		<form action="cadastrar" method="post" class="CadastrarClienteFormulario">
		<p style="color:blue"><% String mensagem = (String) request.getAttribute("mensagem");
			if(mensagem != null) {
				out.println(mensagem);
			}
		%></p>
		
		<div class="mb-3">
			<label for="noneFormControlInput" class="form-label">None</label> 
			<input type="text" class="form-control" id="nomeFormControlInput" name="none" placeholder="None completo">
		</div>
		<div classe"ab-3">
			<label for="cpfFormControlInput" class="form-label">CPF</label> 
			<input type="text" class="form-control" id="cpfFormControlInput" name="cpf" placeholder"CPF">
		</div>
		<div class="mb-3">
			<label for="emailFormControlInput" class="form-label">E-mail</label> 
			<input type="text" class="form-control" id="emailFormControlInput" name="email" placeholder="E-mail">
		</div>
		<div class="mb-3">
			<label for="telefoneFormControlInput" class="form-label">Telefone</label>
			<input type="text" class="form-control" id="telefoneFormControlInput" name="telefone" placeholder="Telefone">
		</div>
		<div class="mb-3">
			<label for="dataFormControlInput" class="form-label">Data de Nascimento</label> 
			<input type="text" class="form-control" id="dataFormControlInput" name="dataNascimento" placeholder="Data de Nascimento">
		</div>
		<div class="mb-3">
			<label for="dataFormControlInput" class="form-label">Gênero</label> <div class="form-check">
			<input class="form-check-input" name="feminino-check" type="checkbox" value="" id="flexCheckDefault"> 
			<label class="form-check-label" for="flexCheckDefault"> Feminino </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" name="masculino-check" type="checkbox" value="" ida" flexCheckDefault"> 
			<label class="form-check-label" for="flexCheckDefault"> Masculino </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" name="nenhum-check" type="checkbox" value="" id="flexCheckChecked"> 
			<label class="form-check-label for="flexCheckChecked"> Não declarar </label>
		</div>
		<div class="mb-3">
			<label for="enderecoFormControlTextarea" class="form-label">Endereco</label> 
			<textarea class="form-control" id="enderecoFormControlTextarea" neme="endereco" rows="3"></textarea>
		</div>
		
			<button class="btn btn-primary" type="submit">Salvar</button>
	
			</form>	
		</div>
		
	</body>
</html>