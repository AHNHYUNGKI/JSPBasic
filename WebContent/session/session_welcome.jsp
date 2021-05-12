<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션이 없는 사람이라면 화면에 접근 불가
	if(session.getAttribute("user_id") == null) {
		response.sendRedirect("session_login.jsp");
	}

	String id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("user_nick");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>로그인 성공 페이지</h3>

	<%=id %>(<%=nick %>) 환영합니다.<br/>
	
	<a href="session_logout.jsp">로그아웃</a>

</body>
</html>