<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--
	Autor: Adrian Diesel
--%>

<!DOCTYPE html>
<html>
	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>Exemplo JSP</title>
	</head>
    <body>
    	<p>
    		<%
    			String nome = "DEV-TI";
    			out.println("Curso: + nome + "<br>");
    		%>
    		Nome: <%= nome %>
    	</p>
    	
    	<p>
    		Produto: <c:out value="${produto.nome}"/> <br>
    		Produto: ${produto.nome}<br>
    		<%= request.getAttribute("produto") %>
    	</p>
    	
    	<table border="1">
    		<c:forEach var="produto" items="${produtos}" varStatus="id">
    			<tr bgbolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff }" >
    				<td>${produto.nome}</td>
    				<td>${produto.quantidade}</td>
    				<td>${produto.valor}</td>
    			</tr>
    		</c:forEach>
    	</table>
    	</table>
    	
    	<br>
    	<% for(int x = 0; x < 5; x++) { %>
    		Olá Mundo com laço: <%= x+1 %><br>
    	<%}%>
    </body>
</html>
