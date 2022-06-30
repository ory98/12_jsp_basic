package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MyPage")
public class MyPage extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(); 	// session 객체 생성
		String id= (String)session.getAttribute("id");	// getAttribute 메서드를 통하여 세션값을 가져온다.
		
		/*
		 * 
		 * request.setAttribute("속성명", DB에서 가져온 데이터);
		 * request.setAttribute("속성명", DB에서 가져온 데이터);
		 * request.setAttribute("속성명", DB에서 가져온 데이터);
		 * 
		 */
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/05_myPage.jsp");
		dis.forward(request, response);
	}	

}
