package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		 // 세션 생성하는 방법
		HttpSession session = request.getSession();  
		
		//  세션 등록 방법
		session.setAttribute("id", request.getParameter("id")); // request.getParameter("id")를 계속 사용할 수 있음. 
	
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/04_loginAction.jsp");
		dis.forward(request, response);
	}

}
