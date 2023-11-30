package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setContentType("text/html"); // html로 해석한다.
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		// 서블릿(Servlet): 자바 + html => 분리되지 않는 코드는 최악 => 앞으로 쓰지 않는다 => Spring 쓰기
		// 1 ~ 10 합계: 1 + 2 + 3 + 4 .. + 10
		int sum = 0;
		for (int i = 1 ; i <= 10; i++) {
			sum += i;
		}
		
		// 합계: <b> 결과값 </b>
		out.println("<html><head><title>합계</title></head><body>");
		out.println("합계: <b>" + sum + "</b>");
		out.println("</body></html>");
		
	}
}
