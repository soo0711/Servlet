package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response.setContentType("text/plain");
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// Request Parameter
		String user_id = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")); // String -> int / "23" -> 23
		// Integer.parseInt(null)은 null을 int로 바꾸지 못해서 에러가 난다.
		
		PrintWriter out = response.getWriter();
//		out.println("결과");
//		out.println("user_id: " + user_id);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		// {"user_id":"soo","name":"전수현","age":23}
		out.println("{\"user_id\":\"" 
				+ user_id +"\", \"name\":\"" 
				+ name + "\", \"age\":" + age + "}");
		
		
	}
}
