<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문</title>
</head>
<body>

	<h1>조건문</h1>
	<%
		String name = "데니스리치";
		
		if(name.equals("데니스리치")) {
	%>
			<p>데니스리치 입니다.</p>
	<% 
		}
		else {
	%>		
			<p>데니스리치가 아닙니다.</p>
	<%
		}
	%>
	
	<hr>
	
	<h1>반복문</h1>
	<%
		for (int i = 0; i < 10; i++) {
	%>		
			<p>for문 : <%=i %></p>
	<%		
		}
	%>
	
	<hr>
	
	<%
		int idx = 0;
		while (idx < 10){
	%>		
			<p>while문 : <%=idx %></p>
	<%		
			idx++;
		}
	%>

</body>
</html>