<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	La météo à <%=session.getAttribute("ville1")%> est de <%=session.getAttribute("tempsVille1")%> °C. <br>
	La météo à <%=session.getAttribute("ville2")%>  est de
</body>
</html>