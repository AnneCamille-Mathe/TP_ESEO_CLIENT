<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Distance entre les villes</title>
</head>
<body style="background-color: aliceblue;">
	<div>
		<div class="container">
			<div class="card border-0 shadow my-5">
				<div class="card-body p-5">
					<h1 class="font-weight-light">Résultat du calcul</h1>
					<p class="lead">
						La distance entre
						<%=session.getAttribute("ville1")%>
						et
						<%=session.getAttribute("ville2")%>
						est de
						<%=session.getAttribute("distance")%>
						km. <br> Si vous voulez de nouveau <a href=Visualiser.jsp>lancer
							un nouveau calcul</a><br>
					</p>

				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous">
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>