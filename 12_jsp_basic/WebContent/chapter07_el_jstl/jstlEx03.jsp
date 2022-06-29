<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문</title>
</head>

	<%-- 

		1) forEach문1 
		
			[형식]
	
			<c:forEach var="임시변수명" begin="시작" end="끝"  step="증감식"></c:forEach>
		
			- java의 for문 기능을 한다.
			- var속성에 임시변수명을 작성하고 begin , end속성으로 반복 횟수를 지정한다.
			  (옵션)step을 통해서 증감식을 지정할 수 있다.
			- 옵션을 안하면 오름차순으로 증감식이 지정된다.
		
	  
	  
		2) forEach문2 (= 향상된 for문)
			
			[형식]
			
			<c:forEach var="임시변수명" items=${배열이름}">	</c:forEach>
			
			- 자바의 forEach문 기능을 한다.
			- items 속성에 배열 및 어레이리스트등 반복가능한 객체를 지정한다.
			
	 --%>

<body>

	<h3>1) forEach문</h3>
	<c:forEach var="i" begin="1" end="10"> <!-- 1부터 10까지 -->
		<p>${i }</p>
	</c:forEach>
	<hr>
	
	<c:forEach var="i" begin="1" end="10" step="${i += 2}">
		<p>${i }</p>
	</c:forEach>
	
	<hr>
	
	<h3>2) forEach문</h3> <!-- servlet을 만들어서 데이터 배열 저장 -->
	<c:forEach var="data" items="${datas }">
		${data }&nbsp;
	</c:forEach>
	
	<hr>
	
	<table border="1" >
		<tr>
			<th>상품코드</th>
			<th>상품이름</th>
			<th>부서코드</th>
			<th>부서이름</th>
			<th>담당자코드</th>
			<th>담당자이름</th>
		</tr>
		<c:choose>
			<c:when test="${empty productList }">
				<tr align="center">
					<td colspan="6">데이터가 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="product" items="${productList }">
					<tr align="center">
						<td>${product.pdCd }</td>
						<td>${product.pdNm }</td>
						<td>${product.deptCd }</td>
						<td>${product.deptNm }</td>
						<td>${product.mgrCd }</td>
						<td>${product.mgrNm }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>