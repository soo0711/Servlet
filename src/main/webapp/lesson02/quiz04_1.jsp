<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
</head>
<body>
	<%

	%>
	<%
	int length = Integer.parseInt(request.getParameter("length"));
	String[] unitArr = request.getParameterValues("unit");
	String result = "";
	if (unitArr != null) {
		for (String unit : unitArr) {
			if (unit.equals("inch")) {
		result += (length / 2.54) + " in<br>";
			} else if (unit.equals("yd")) {
		result += (length / 91.44) + " yd<br>";
			} else if (unit.equals("ft")) {
		result += (length / 30.48) + " ft<br>";
			} else {
		result += (length / 100.0) + " m<br>";
			}
		}
	}
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=length%>cm
		</h3>
		<hr>
		<h1><%=result%></h1>
	</div>
</body>
</html>