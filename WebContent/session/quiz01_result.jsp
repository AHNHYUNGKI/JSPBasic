<%@page import="session.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 사용자가 입력한 값을 받은 다음에 값을 저장할 수 있는 User
		(자바 클래스)를 생성합니다.
	2. 받은 값을 User에 저장하고, 저장한 User클래스를 세션에 저장
	3. quiz01_ok페이지로 리다이렉트 합니다.
		(여기서 세션에 저장된 id, 이름만 뽑아서 출력)
	*/
	
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String region = request.getParameter("region");
	
	User user = new User(id, pw, name, email, region);
	
	session.setAttribute("user", user);
	
	response.sendRedirect("quiz01_ok.jsp");

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