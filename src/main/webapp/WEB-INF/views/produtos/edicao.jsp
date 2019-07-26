<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/excluir" var="urlExcluirProduto"/>
<c:url value="/salvar" var="urlSalvarProduto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<b>Edição de Produto</b><br><br>
	<c:if test="${ empty produto || empty produto.id || empty produto.nome }" >
		Produto inválido!
	</c:if>
	<c:if test="${ not empty produto && not empty produto.id && not empty produto.nome }">
		<form method="post">
			Id: <input type="text" name="id" required="required" readonly="readonly" value="${ produto.id }"><br>
			Nome: <input type="text" name="nome" required="required" value="${ produto.nome }"><br>
			Descrição: <input name="descricao" type="text" value="${ produto.descricao }"><br><br>
			<input type="submit" formaction="${ urlExcluirProduto }" value="Excluir"> &nbsp;
			<input type="submit" formaction="${ urlSalvarProduto }" value="Salvar">
		</form>
	</c:if>
</body>
</html>