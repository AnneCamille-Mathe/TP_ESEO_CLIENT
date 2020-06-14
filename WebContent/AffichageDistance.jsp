<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Distance entre les villes</title>
</head>
<body>
	<div>
		La distance entre <%=session.getAttribute("ville1")%> 	et 	<%=session.getAttribute("ville2")%>
		est de 	<%=session.getAttribute("distance")%> km. <br>
		Si vous voulez de nouveau <a href=Visualiser.jsp>lancer un 	nouveau calcul</a><br>
	</div>

</body>
</html>