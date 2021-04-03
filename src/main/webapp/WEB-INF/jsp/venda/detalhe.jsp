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
	
	<h2>Vendas</h2>
	
	<p> <a href="/home"> Home </a></p>
	
	<form action="/venda/incluir" method="post">
	
	<div class="form-group">
	<label>Informe a descrição</label>
	<input type="text" class="form-control" name="descricao">
	</div>
	
	<div class="form-group">
	<label>Informe o Investidor</label>
	<select class="form-control" name="investidor.id">
		<c:forEach var="i" items="${investidor}">
		<option value= "${i.id}">${i.nome}</option>	
		</c:forEach>
	</select>
	</div>
	
	<div class="form-group">
	<label>Informe o Valor</label>
	<input type="text" class="form-control" name="valor">
	</div>
	
	<div class="form-group">
	<label for="tipoDeProduto">Informe o Tipo do Produto:</label>
	<select name="tipoDeProduto">
		<option value= "Renda Fixa">Renda Fixa</option>	
		<option value= "Fundo de Investimento">Fundo de Investimento</option>	
		<option value= "Fundo Imobiliario">Fundo Imobiliario</option>	
	</select>
	</div>
	
	<button type="submit">Gravar</button>
	</form>	
			
		<c:if test="${not empty lista}">
		<p>Listagem das descrições.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Descrição</th>
		        <th>Investidor</th>
		        <th>Valor</th>
		        <th>Tipo de Produto</th>
		      </tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="v" items="${lista}">
		    	<tr>
		        <td>${v.descricao}</td>
		        <td>${v.investidor.nome}</td>
		         <td>${v.valor}</td>
		         <td>${v.tipoDeProduto}</td>
		        <td><a href="/venda/${v.id}/excluir">excluir</a></td>
		      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		  </c:if>
		  
		  <c:if test="${empty lista}">
		  	<p>Nenhuma lista cadastrada.</p>
		  </c:if>
		  
	</div>
</body>
</html>