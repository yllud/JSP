package multi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Check
 */
@WebServlet("/check.do")
public class Check extends HttpServlet {

	
	
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Check ���� ��ü �ϳ��� ������");
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("Check ���� �Ҹ�");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String today = request.getParameter("today");
		String result = "�׳� ����";
		if (today.equals("����")) {
			result = "������";
		} else if (today.equals("�帲")) {
			result = "�ڵ�";
		} else if (today.equals("���")) {
			result = "����";
		}

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		String pass = request.getParameter("pass");
		String result = "���� �� �����ϴ�.<img src='no.jpg'>";
		if (pass.equals("���¿��̴�")) {
			result = "��������.<img src='yes.jpg'>";
		}

		PrintWriter out = response.getWriter();
		out.print(result);
		out.close();

	}

}
