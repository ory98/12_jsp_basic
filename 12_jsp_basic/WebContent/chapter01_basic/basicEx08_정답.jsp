<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습예시</title>
</head>
<body>

	<select>
			<%
				for (int year = 2021; year >= 1990; year--) {
			%>
					<option value =<%=year %>><%=year %></option>
			<%
				}
			%>		
	</select>년
	
	<select>
			<%
				for (int month = 1; month <= 12; month++) {
			%>
					<option value =<%=month %>><%=month %></option>
			<%
				}
			%>		
	</select>월
	
	<select>
			<%
				for (int day = 1; day <= 31; day++) {
			%>
					<option value =<%=day %>><%=day %></option>
			<%
				}
			%>		
	</select>일
				
		
	
</body>
</html>