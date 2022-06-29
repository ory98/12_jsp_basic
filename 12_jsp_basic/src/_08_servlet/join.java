package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join") // 클라이언트가 jsp페이지가 아닌 해당 url경로로 웹시스템에 request한다. 사용자가 이 경로로 들어와서 이 파일의 이름만 알 수 있음. (보안상)  
public class join extends HttpServlet {  // Http 통신이 가능한 HttpServlet클래스를 상속받아 구현한다. HttpServlet : 웹에서 통신이 가능한 클래스 > 웹이랑 연결 
	
	private static final long serialVersionUID = 1L; // Servlet생성시 기본값으로 생성된다. 서블릿의 내부 식별자 역할을 한다. (바꾸지 않기)
   
	/*  
	- HttpServletRequest 객체를 생성하고, 요청할 때 갖고 있던 정보를 이 객체에 저장한다.
	- 브라우저에게 응답을 보낼 때 사용하기 위하여, HttpServletResponse 객체를 생성한다.
	- 생성된 HttpServletRequest, HttpServletResponse 객체를 Servlet에게 전달한다.
	 */
	
	// get형식으로 url요청이 들어왔을 때 수행할 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 아래의 dispatcher에 명시된 jsp파일로 포워딩 한다.
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/01_join.jsp"); // 아래의 dispatcher에 명시된 jsp파일로 포워딩 한다. 내부적 연결 (보여지지 않음)
		dis.forward(request, response);
		
	}

	// post형식으로 url요청이 들어왔을 때 수행할 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String[] hobbies = request.getParameterValues("hobby"); // checkbox 선택지가 여러개이기 때문에 사용
		
		String hobby = "";
		for (String temp : hobbies) {
			hobby += temp + " ";
		}
		
		// request.setAttribute("속성명", "데이터"); 메서드를 이용하여 VIEW 화면으로 데이터를 전송한다. (같이 보내줌)
		request.setAttribute("id", id);
		request.setAttribute("pw", pw);
		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("hobby", hobby);
		
		// 데이터를 아래의 dispatcher에 명시된 jsp파일로 보낸다.
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/02_joinAction.jsp");
		dis.forward(request, response);
	}

}
