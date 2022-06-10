<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>
	
	<%
	
		request.setCharacterEncoding("utf-8");
	
		String com = request.getParameter("com");
		String me = request.getParameter("me");
		
		String result = "";
		
		if 		(com.equals(me)) 	result = "비겼다."; 
		else if (me.equals("가위")) result = "졌다."; 
		else if (me.equals("보")) 	result = "이겼다."; 
		else 						result = "입력된 값이 올바르지 않습니다.";
	
	%>

	<h2>나 : <%=me %></h2>
	<h2>컴퓨터 : <%=com %></h2>
	
	<hr>
	
	<h2>결과 : <%=result %></h2>
	

</body>
</html>