<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el Session</title>
</head>
<body>
	
	<!-- 다음 페이지까지 이어지지 않아 데이터가 화면이 나오지 않음.
	<p>아이디 : ${param.id }</p>
	<p>이름   : ${param.name }</p>
	 -->
	
	<p>아이디 : ${sessionScope.id}</p>
	<p>이름   : ${sessionScope.name }</p>

</body>
</html>