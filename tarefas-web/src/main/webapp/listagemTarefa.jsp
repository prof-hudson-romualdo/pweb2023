<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tarefas Web</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Tarefas</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>id</th>
					<th>Título</th>
					<th>Descrição</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${tarefas}" var="tarefa">
					<tr>
						<td>${tarefa.id}</td>
						<td>${tarefa.titulo}</td>
						<td>${tarefa.descricao}</td>
						<td>
							<a class="btn btn-success" href="detalheTarefa.jsp?titulo=${tarefa.titulo}&descricao=${tarefa.descricao}">Visualizar</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a class="btn btn-primary" href="index.html">Voltar</a>
	</div>
</body>
</html>