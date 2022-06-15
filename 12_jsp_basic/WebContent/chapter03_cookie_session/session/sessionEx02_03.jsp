<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 사용 예시</title>
</head>
<body>

	<%
	
		//세션 가져오기 session.getAttribute(속성명);
		// getAttribute() 메서드의 반환타임은 Object이므로 
		// setAttribute()에서 입력한 데이터 형식으로 형변환을 해주어야한다. 
		String id = (String)session.getAttribute("id");
	
	%>
	
	<h2>마이페이지</h2>
	<p><%=id %>님 로그인 중 </p>
	
	
</body>
</html>