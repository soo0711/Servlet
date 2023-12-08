<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-2">
	<h3>
		<a href="/lesson03/quiz02/layout.jsp" class="text-success">Melong</a>
	</h3>
</div>
<div class="col-10">
	<form method="get" action="/lesson03/quiz02/list_layout.jsp">
		<div class="input-group">
			<input type="text" class="form-control col-6" name="search">
			<% // 1. input에 search가 남아있도록 value를 사용해보기 
			   // 2. 검색어가 없을때 if (target != null)로 만들기 %>
			<div class="input-group-append">
				<input type="submit" class="btn btn-info" value="검색">
			</div>
		</div>
	</form>
</div>