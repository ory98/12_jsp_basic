<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>

	<!-- 
	
		# forward
		
		- 다른 문서로 이동시키기 위한 액션태그
		
		- response.sendRedirect() 와 비슷한 기능을 하지만 url을 웹브라우저에 노출시키지 않는 특징이 있다.
		
		- param 액션 태그를 통해 데이터를 전달할 수 있다.
		
	 -->
	 
	 <!-- html 페이지 이동 방법 -->
	 <jsp:forward page="forwardEx01_target.jsp"></jsp:forward> 
	 
	 <!-- java 페이지 이동 방법 -->
	 <%
	 	// response.sendRedirect("forwardEx01_target.jsp"); > alert를 사용할 수 없음.
	 %>
	 
	 <!-- javascript 페이지 이동 방법 -->
	 <script>
	 	// location.href = "forwardEx01_target.jsp";
	 </script>
	 	
</body>
</html>