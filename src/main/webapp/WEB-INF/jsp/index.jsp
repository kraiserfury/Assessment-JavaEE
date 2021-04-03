<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assessment APP</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	
		<h2>Assessment JavaEE</h2>
		
		<h3>${user.nome}</h3>
		
		<h4>${user.email}</h4>
		
		<p>GIT: <a href="${user.git}">link</a></p>
	
	<form action="/venda" method="get">
	
	<button type="submit">Lista de Venda</button>
	</form>
	
	<form action="/investidor" method="get">
	
	<button type="submit">Novo Investidor</button>
	</form>  
	
	</div>
</body>
</html>