<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assessment JavaEE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	
	<h2>Cadastramento de Usuários</h2>
	
	<p> <a href="/"> Tela de Login </a></p>
	
	<form action="/usuario/incluir" method="post">
	
	<div class="form-group">
	<label>Informe seu nome</label>
	<input type="text" class="form-control" name="nome">
	</div>
	
	<div class="form-group">
	<label>Informe seu email</label>
	<input type="email" class="form-control" name="email"> 
	</div>
	
	<div class="form-group">
	<label>Informe a sua senha</label>
	<input type="text" class="form-control" name="senha">
	</div>
	
	<button type="submit">Gravar</button>
	</form>	
			
		<c:if test="${not empty usuarios}">
		<p>Listagem de usuários cadastrados.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Nome</th>
		        <th>E-mail</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="u" items="${usuarios}">
		    	<tr>
		        <td>${u.nome}</td>
		        <td>${u.email}</td>
		        <td><a href="/usuario/${u.id}/excluir">excluir</a></td>
		      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		  </c:if>
		  
		  <c:if test="${empty usuarios}">
		  	<p>Nenhum usuário cadastrado.</p>
		  </c:if>
		  
	</div>
</body>
</html>