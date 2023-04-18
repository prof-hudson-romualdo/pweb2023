<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Cadastro de Usuário</title>
  </head>
<body>
	<%
		String nome = request.getParameter("nome");
		if(nome == null)
			nome = "";
		
	    String email = request.getParameter("email");
	    if(email == null)
	    	email = "";
	%>
	<div class="container-fluid">
		<h1>Cadastro de Usuário</h1>
		<form method="post" action="cadastrarUsuario">
			<label for="nome">Nome:</label>
			<input type="text" name="nome" value="${param.nome}">
			<label for="email">E-mail:</label>
			<input type="text" name="email" value="${param.email}"><br><br>
			<label for="senha1">Senha:</label>
			<input type="password" name="senha1" >
			<label for="senha2">Senha confirmada:</label>
			<input type="password" name="senha2"><br><br>
			<input type="submit" value="Salvar" class="btn btn-primary">
			<a class="btn btn-secondary" href="cadastrarUsuario" role="button">Listar Usuários</a>
			<a class="btn btn-secondary" href="index.html" role="button">Voltar</a>
		</form>
		<%if(!nome.isEmpty()){ %>
			<hr>
			<div class="alert alert-danger" role="alert">
				<%=nome %> <span>as senhas informadas não são iguais</span>
			</div>
		<%} %>
	</div>
</body>
</html>