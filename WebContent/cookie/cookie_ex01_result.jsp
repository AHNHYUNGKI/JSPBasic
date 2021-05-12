<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 데이터를 처리하는 페이지...
	/*
	1. 전송되는 3가지 값을 받습니다.
	2. id = abc, pw = 1234라면 로그인으로 간주하고 user_id이름의 실제 아이디값을
	담는 쿠키 생성
	3. 아이디, 비밀번호가 틀리면 로그인페이지로 리다이렉트
	4. 로그인 성공시 cookie_ex01_welcome페이지로 리다이렉트
		화면에 "~~~아이디님 환여합니다." 출력
	*/
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");

	if(id.equals("abc") && pw.equals("1234")) {
		Cookie ck = new Cookie("user_id", id);
		ck.setMaxAge(180);
		response.addCookie(ck);
		
		// 아이디기억하기 쿠키
		if(idCheck != null) {
			Cookie check = new Cookie("idCheck", id);
			check.setMaxAge(1800); // 30분
			response.addCookie(check);
			
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp");
	} else {
		response.sendRedirect("cookie_ex01.jsp");
	}
	
	
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