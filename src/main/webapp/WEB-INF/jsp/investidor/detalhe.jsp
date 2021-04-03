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
	
	<h2>Cadastramento de investidores</h2>
	
	<p> <a href="/home"> Home </a></p>
	
	<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
	    	<strong>Cuidado Hein!!</strong> ${mensagem}
		</div>
	</c:if>
	
	<form action="/investidor/incluir" method="post">
	
	<div class="form-group">
	<label>Informe o seu nome</label>
	<input type="text" class="form-control" name="nome">
	</div>
	
	<div class="form-group">
	<label>Informe o seu CPF</label>
	<input type="text" class="form-control" maxlength="15" name="cpf">
	</div>
	
	<div class="form-group">
	<label>Informe o seu perfil</label>
	<input type="text" class="form-control" name="perfil">
	</div>
	
	<button type="submit">Gravar</button>
	</form>	
			
		<c:if test="${not empty lista}">
		<p>Listagem de investidores cadastrados.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Investidor</th>
		        <th>CPF</th>
		        <th>Perfil</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="i" items="${lista}">
		    	<tr>
		        <td>${i.nome}</td>
		        <td>${i.cpf}</td>
		        <td>${i.perfil}</td>
		        <td><a href="/investidor/${i.id}/excluir">excluir</a></td>
		      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		  </c:if>
		  
		  <c:if test="${empty lista}">
		  	<p>Nenhum investidor cadastrado.</p>
		  </c:if>
		  
	</div>
</body>
</html>