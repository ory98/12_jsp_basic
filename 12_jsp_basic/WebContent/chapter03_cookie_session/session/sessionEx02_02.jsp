<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용 예시</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String id 	  = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		// 세션 등록 session.setAttribute(속성명,값); / 값에 객체(DTO)를 넣을 수 있다. (반환타입(get)도 객체)
		session.setAttribute("id", id);
	%>
	
	<h4>로그인 되었습니다.</h4>
	<p>아이디 : 	<%=id %></p>
	<p>패스워드 : 	<%=passwd %></p>
	
	<hr>
	<p><a href="sessionEx02_03.jsp">마이페이지로 이동</a></p>
	<p><a href="sessionEx02_04.jsp">장바구니로 이동</a></p>
	
</body>
</html>