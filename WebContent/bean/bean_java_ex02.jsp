<%@page import="bean.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String email = request.getParameter("email");

	User user = new User();
	user.setId(id); // id 저장
	user.setEmail(email); // email 저장
	
	// request에 user객체를 강제로 저장
	request.setAttribute("user", user);
	
	// forward로 이동
	request.getRequestDispatcher("bean_java_ex03.jsp").forward(request, response);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>