<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assessment Corretora</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	
	<h2>Login</h2>
	
	<p> <a href="/usuario"> Novo usuario </a></p>
	
	<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
	    	<strong>Cuidado Hein!!</strong> ${mensagem}
		</div>
	</c:if>
	
	<form action="/usuario/login" method="post">
	
	<div class="form-group">
	<label>Informe o Email</label>
	<input type= "email" class="form-control" name="email">
	</div>
	
	<div class="form-group">
	<label>Informe a Senha</label>
	<input type="password" class="form-control" name="senha">
	</div>
	
	<button type="submit">Acessar</button>
	</form>
	</div>
</body>
</html>