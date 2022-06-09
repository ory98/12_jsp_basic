<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
<style>
	.colorA  {background-color : skyblue;}
	.colorB  {background-color : yellow;}
</style>
</head>
<body>

	<table border="1">
		<% 
			int i = 1;
		
			while ( i <= 10 ) {
		%>
				<tr>
		<% 
					if (i % 2 == 0){
		%>
						<td class="colorA"><%=i %>번</td>
		<% 			
					} 
					else {
		%>
						<td class="colorB"><%=i %>번</td>
		<% 			
					}
		%>
					
				</tr>
		<% 	
				i++;
			}
		
		%>
	
	</table>
</body>
</html>