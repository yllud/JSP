package multi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hi2
 */
@WebServlet("/haha")
public class Hi2 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("haha ��û");
		String data=request.getParameter("data");
		System.out.println("���� �����ʹ�"+data);
		
		PrintWriter out = response.getWriter(); //response :������ �������� ������ �� ���
		//PrintWriter�� �������� ������ �� ���ڸ� �� �� �ִ� ��ǰ.
		out.print("<!DOCTYPE html>\n" + 
				"<html>\n" + 
				"<head>\n" + 
				"<meta charset=\"UTF-8\">\n" + 
				"<title>Insert title here</title></head>\n" + 
				"<body>");
		out.print("<h3>");
		out.print("i am a web programmer...");
		out.print("</h3></body></html>");
		
		out.close();
	}

}
