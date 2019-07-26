<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/incluir" var="urlIncluirProduto"/>
<c:url value="/editar" var="urlEditarProduto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<b><i>Read</i> - Listagem de Produtos</b><br><br>
	<c:if test="${ empty produtos || produtos.size() <= 0 }">	
		Não há produtos cadastrados.
	</c:if>
	<c:if test="${ not empty produtos && produtos.size() > 0 }">
		<ul>
			<c:forEach items="${ produtos }" var="produto">
				<li><a href="${ urlEditarProduto }?id=${ produto.id }">${ produto.id }</a> - ${ produto.nome }</li>
			</c:forEach>
		</ul>
	</c:if>
	<br><br>
	<a href="${ urlIncluirProduto }">Cadastrar produto</a>
</body>
</html>