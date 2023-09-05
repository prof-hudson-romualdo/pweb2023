<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tarefa Web</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Tarefa</h1>
		<form action="">
			<label for="titulo">Título:</label> <input name="titulo" type="text"
				value="${param.titulo}"><br>
			<br> <label for="descricao">Descrição:</label>
			<textarea rows="5" cols="20">${param.descricao}</textarea>
			<br>
			<br> <a href="tarefa" class="btn btn-success">Voltar</a>
		</form>
	</div>
</body>
</html>