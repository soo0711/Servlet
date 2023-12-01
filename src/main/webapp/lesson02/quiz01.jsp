<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%-- 1. --%>
<%!
	
	// 메소드
	// 선언문 
	// input: 끝수(n), output: 결과값 
	public int getSum(int i){
	int sum = 0;
	for (int j = 1; j <= i; j++){
		sum += j;
	}
	return sum;
	}
%>
	<h1>1부터 50까지의 합은 <%=getSum(50) %>입니다.</h1>
	
<%-- 2. --%>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	double avg = (double)sum / scores.length;
%>

	<h1>평균 점수는 <%=avg %>입니다.</h1> 
	
<%-- 3. --%>
<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	sum = 0;
	for (int i = 0; i < scoreList.size(); i++){
		if (scoreList.get(i).equals("O")){
			sum += 100 / scoreList.size();
		}
	}
%> 

	<h1>채점 결과는 <%=sum %>점 입니다.</h1>

<%-- 4. --%>
<%
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0,4));	
	int age = 2023 - year;	
	
	// out.println(""); 을 쓸 수 있다.
%>

	<h1><%=birthDay %>의 나이는 <%=age %>세 입니다.</h1>

</body>
</html>