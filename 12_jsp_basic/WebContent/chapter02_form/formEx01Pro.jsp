<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process</title>
</head>
<body>

	<%--
	
		- 폼 전송을 통해서 넘어 오는 데이터는 request객체를 통해서 전달을 받는다.
		- 페이지의 encoding설정 외에 request객체의 encoding을 setCharacterEncoding메서드를 이용하여 추가로 지정해 주어야한다.
		- request.getParameter(); 메소드를 통해서 from을 통해 넘어온 데이터의 name속성 값을 가져온다.
		- request.getParameter(); 의 기본 반환타입은 문자열이다. (숫자는 숫자열로 바꿔줘야함)
		- request.getParameterValues(); 메소드를 통해서 배열의 값을 처리 할 수 있다.
	 	
	 	- HttpServleRequest : 요청을 처리할 수 있는 클래스 (내장 객체) > 이미 내장되어있는(만들어져있는) 객체
	 	- 한국어 처리할 경우 request.setCharacterEncoding("utf-8"); 를 입력해야 한국어가 입력이 된다.
	 	
	 --%>
	 
	 <%
	 
	 	request.setCharacterEncoding("utf-8"); // 필수로 해줘야함.
	 
	 	String userName 	= request.getParameter("userName");
	 	String userContact 
	 	= request.getParameter("userContact");
	 	
	 	String temp 		= request.getParameter("userAge");  // 문자열
	 	int userAge 		= Integer.parseInt(temp);			// 문자열 > 숫자 형변환
	 	userAge--;												// 숫자인 것 증명 
	 	
	 	System.out.println("====================");
	 	System.out.println("userName : " + userName);
	 	System.out.println("userContact : " + userContact);
	 	System.out.println("userAge : " + userAge);
	 	System.out.println("====================\n");
	 	
	 %>
	
	<script>
		alert("전송 완료되었습니다.");
	</script>
	
</body>
</html>