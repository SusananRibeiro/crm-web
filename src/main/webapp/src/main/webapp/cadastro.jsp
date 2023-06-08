<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<script 
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENJd04Dr2bk8IFxOpeoTz1HIcje39WjDKdf19U8g14dd03GYNS?NTKfAdVQSZe"
			crossorigin="anonymous"> </script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/und/popper.min.js" 20 integrity="sha384-2YPOMqeuIDAVKHILqWBUTcbYfZ80suINd62891fy250V9guujx431Tvf112/0EXE"
			crossorigin="anonymous"> </script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" 24 integrity="sha384-Y400pww3 duJdCwv51y85CFYWqFDs fob/36kgExXXV4idmbt980cxXY S9UOXAB7BZ" crossorigin="anonymous"> </script>
	</head>
	<body>
		<div class="container">
			<h3>CRM/WEB Cadastro de Clientes</h3>
			<%@include file="navbar.jsp"%>
		<br>
		<div class="mb-3">
			<label for="noneFormControlInput" class="form-label">None</label> 
			<input type="text" class="form-control" id="nomeFormControlInput" name="none" placeholder="None completo">
		</div>
		<div classe"ab-3">
			<label for="cpfFormControlInput" class="form-label">CPF</label> 
			<input type="text" class="form-control" id="cpfFormControlInput" name="cp" placeholder"CPF">
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
			<textarea class="form-control" id="enderecoFormControlTextarea" rows="3"></textarea>
		</div>
		<div>
			<button class="btn btn-primary" type="submit">Salvar</button>
		</div>
	</body>
</html>