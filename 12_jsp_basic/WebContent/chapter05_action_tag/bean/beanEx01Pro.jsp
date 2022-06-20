<%@page import="_04_bean.ProductDao"%>
<%@page import="_04_bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanPro</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8"); // 필수 작성 
		
		ProductBean bean1 = new ProductBean();
		bean1.setPdCd(request.getParameter("pdCd"));
		bean1.setPdNm(request.getParameter("pdNm"));
		bean1.setDeptCd(request.getParameter("deptCd"));
		bean1.setDeptNm(request.getParameter("deptNm"));
		bean1.setMgrCd(request.getParameter("mgrCd"));
		bean1.setMgrNm(request.getParameter("mgrNm"));		
	
	%>
	
	<jsp:useBean id="bean2" class="_04_bean.ProductBean">
		<jsp:setProperty property="pdCd"   name="bean2"/>
		<jsp:setProperty property="pdNm"   name="bean2"/>
		<jsp:setProperty property="deptCd" name="bean2"/>
		<jsp:setProperty property="deptNm" name="bean2"/>
		<jsp:setProperty property="mgrCd"  name="bean2"/>
		<jsp:setProperty property="mgrNm"  name="bean2"/>
	</jsp:useBean>
	
	
	<!-- 간소화하기 위해 bean을 사용  -->
	
				<!-- 변수명         프로젝트명.클래스명 -->
	<jsp:useBean id="bean3" class="_04_bean.ProductBean">
		<jsp:setProperty property="*" name="bean3"/>
	</jsp:useBean>
	
	<%
		// 전달된 데이터 확인용 
		ProductDao productDao = new ProductDao();
		productDao.printDate(bean1);
		productDao.printDate(bean2);
		productDao.printDate(bean3);
	%>
	

</body>
</html>