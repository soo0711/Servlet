package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {

	@Override // 반드시 쓰기!!!
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지 - response header에 추가
		// 두개가 세트!
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();
		out.println("안녕하세요");

		Date now = new Date();
		out.println(now);

		// formatter
		// 2023-11-27 오후 17:05:43
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a H:mm:ss");
		out.println(sdf.format(now));
	}
}
