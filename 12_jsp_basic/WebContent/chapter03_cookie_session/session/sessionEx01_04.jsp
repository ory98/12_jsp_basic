<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionEx01_04</title>
</head>
<body>

	<%
		String id =request.getParameter("id");
	%>
	
	<h2>장바구니</h2>
	<p><%=id %>님 로그인 중</p>
	
</body>
</html>