<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
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
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</thead>
			<tbody>
			<%
			List<Map<String, Object>> list = new ArrayList<>();
		    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
		    list.add(map);
			
		    String menu = request.getParameter("menu"); // 검색어
			String point = request.getParameter("point"); // 별점 4점 이하 체크
			boolean exclude = point != null;
			
			for (int i = 0; i < list.size(); i++){
				if (list.get(i).get("menu").equals(menu)){	
					// skip 조건: 체크가 되어있고 스킵 되어야 하는 조건이며 continue로 넘김
					if (exclude && (Double)list.get(i).get("point") < 4.0){
						// String to  숫자 -> Integer.parseInt(), valueOf()...
						// Object to new type -> 캐스팅을 명시적으로 해줘야 한다. (Integer), (Double) ...
						continue; // 아래 코드 수행하지 않고 넘김
					} 
			%>
			<tr> 
				<td><%=menu %></td>
				<td><%=list.get(i).get("name") %></td>
				<td><%=list.get(i).get("point") %></td>
			</tr>
			<%
				} 
			}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>