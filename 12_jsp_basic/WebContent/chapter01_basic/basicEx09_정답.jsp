<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습예시</title>
</head>
<body>
	
	<%
		Random ran = new Random();
	
		int m = ran.nextInt(12)+1;
		
		if (m == 4 || m == 6 || m == 9 ||  m == 11) {
	%>
			<select>
				<option value = ""></option>
			</select>
		
	<%		
		}
		
		else if (m == 2){
				
		}
		else {
			
		}
			
	%>

	
</body>
</html>