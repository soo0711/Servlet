<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- result.jsp에 넣기 때문에 html 태그를 지워야지 중복이 안된다. 위에 코드는 jsp 페이지라는 것을 알려주기 때문에 지우면 안된다.-->
<p>
	현재시간: <%= Calendar.getInstance().getTime() %>
</p>