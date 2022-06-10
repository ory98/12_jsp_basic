<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>

	<%
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String result = "로그인 실패";
		
		if (dbId.equals(id) && dbPw.equals(pw)) result = "로그인 성공!"; 
	%>
	
	<h3>결과 : <%=result %></h3>
</body>
</html>