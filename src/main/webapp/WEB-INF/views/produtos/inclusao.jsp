<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/salvar" var="urlSalvarProduto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<b>Cadastro de Produto</b><br><br>
	<form action="${ urlSalvarProduto }" method="post">
		Nome: <input type="text" name="nome" required="required"><br>
		Descrição: <input name="descricao" type="text"><br><br>
		<input type="submit" value="Salvar">
	</form>
</body>
</html>