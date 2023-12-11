package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class DeleteQuiz02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// id
		int id = Integer.parseInt(request.getParameter("id"));
		
		// connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete
		String query = "delete from `bookmark` where `id` = " + id;
		
		try {
			ms.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// disconnect
		ms.disconnect();
		
		// 302
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
