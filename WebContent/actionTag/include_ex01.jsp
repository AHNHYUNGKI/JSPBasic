<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>여기는 1번 페이지</h2>
	<%-- 
	<jsp: include page="include_ex02.jsp" />
	--%>
	
	<%@ include file="include_ex02.jsp" %>
	
	<%=total %>
	<!-- 
	지시자 include는 페이지에서 사용하는 변수도 가져올 수 있는 반면에
	액션태그 include는 단순히 html영역만 가져올 수 있습니다.
	 -->
	
	
</body>
</html>