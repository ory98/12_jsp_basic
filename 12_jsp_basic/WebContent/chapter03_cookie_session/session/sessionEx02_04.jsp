<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용 예시</title>
</head>
<body>

	<%
		String id = (String)session.getAttribute("id");
	%>
	
	<h2>장바구니</h2>
	<p><%=id %>님 로그인 중</p>
	
</body>
</html>