<%@page import="java.util.*"%> <%-- util.* 하면 모두 사용한다는 것 --%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 표현하기
		// {"키" = 값} - json
		// {"korean" = 85, "english" = 72, "math" = 90, "science" = 100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean",85);
		scoreMap.put("english",72);
		scoreMap.put("math",90);
		scoreMap.put("science",100);
		
	%>
	
	<table border="1">
		<% 
			Iterator<String> iter = scoreMap.keySet().iterator();
			while(iter.hasNext()){
				String key = iter.next(); // 과목명 = 맵의 키
		%>
		<tr>
			<th>
			<%
				if (key.equals("korean")){
					out.println("국어");
				} else if (key.equals("english")){
					out.println("영어");
				} else if (key.equals("math")){
					out.println("수학");
				} else if (key.equals("science")){
					out.println("과학");
				}
			%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>