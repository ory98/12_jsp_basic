<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>

	 <!-- html 페이지 이동 방법(jsp:param) -->
	 <jsp:forward page="forwardEx02_target.jsp">
	 	<jsp:param value="0x003" name="pdCd"/>
	 	<jsp:param value="pad" name="pdNm"/>
	 </jsp:forward>
	 
	 <!-- java 페이지 이동 방법(response.sendRedirect) -->
	 <%
	 	/*
	 	String pdCd = "0x002";
	 	String pdNm = "mouse";
	 
	 	// response.sendRedirect("forwardEx02_target.jsp?pdCd="+pdCd+"&pdNm="+pdNm); > alert를 사용할 수 없음.
	 	
	 	String  url = "forwardEx02_target.jsp";
	 			url += "?pdCd=" + pdCd;
	 			url += "&pdNm=" + pdNm;
	 	
	 	response.sendRedirect(url);
	 	*/
	 %>
	 
	 <!-- javascript 페이지 이동 방법(location.href)********가장 많이 사용 -->
	 <script>                   
	 	
	 /*
	 	// 묶음으로 가져갈 경우 : ?를 사용한다. > 목적지 ? 변수명 / & : 하나 더 보내기 위해 작성 
			 
		var pdCd = "0x001";
	 	var pdNm = "keyboard";
			 
	 	// location.href = "forwardEx02_target.jsp?pdCd=" + pdCd + "&pdNm=" + pdNm;
	 	
	 	var url = "forwardEx02_target.jsp";
	 		url += "?pdCd=" + pdCd;
	 		url += "&pdNm=" + pdNm;
	 	location.href = url;
	 */
	 
	 </script>
	 	
</body>
</html>