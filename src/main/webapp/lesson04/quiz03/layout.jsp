<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
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
<style>
	header {height: 100px; background-color: orange;}
	nav {height: 80px; background-color: orange;}
	.content {min-height: 500px;}
	footer {height: 80px;}
	.nav-text {color: white; font-weight: bold; font-size: 20px;}
	.nav-text:hover {color: white;}
</style>
<body>
	<div id="wrap" class="container bg-secondary">
		<header class="d-flex justify-content-center align-items-center">
			<h1 class="text-white font-weight-bold">HONG당무 마켓</h1>
		</header>
		<nav class="d-flex justify-content-center align-items-center">
			<ul class="nav nav-fill w-100">
				<li class="nav-item"><a href="#" class="nav-text">리스트</a></li>
				<li class="nav-item"><a href="#" class="nav-text">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-text">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="content bg-primary">
			<div></div>
		</section>
		<footer class="bg-danger d-flex justify-content-center align-items-center">
			<small>Copyright 2023. HONG All Rights Reserved</small>
		</footer>
	</div>
</body>
</html>