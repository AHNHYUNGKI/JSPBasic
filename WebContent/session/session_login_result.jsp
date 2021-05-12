<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 넘어오는 3가지 값을 받습니다.
	2. 아이디랑 비밀번호가 동일하면 로그인 성공이라고 가정 (user_id, 실제아이디값)의 세션 생성
		(user_nick, 실제닉네임값)의 세션을 생성
	3. session_welcome으로 리다이렉트해서 "id(닉네임) 환영합니다." 출력
		틀린경우는 로그인페이지로 리다이렉트
	4. session_welcome에는 로그아웃 a태그를 생성합니다.
		a태그 클릭시 session_logout페이지로 이동해서 세션을 삭제하고, 다시 로그인페이지로
	*/
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)) {
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		response.sendRedirect("session_welcome.jsp");
	} else {
		// response.sendRedirect("session_login.jsp");
%>	
	
	<script>
	
		/*
		html에서 동직인 부분의 처리는 js를 이용합니다.
		스크립트 사용은 script태그안에 작성합니다.
		
		var a = 1; // 변수
	
		function 이름(b) {
			// 함수
		}
		*/
		
		// js 내장함수
		// alert("아이디, 비밀번호를 확인하세요.");
		// confirm("yes or no 확인창");
		// history.go(-1); // 이전 기록으로 돌아감
		// location.href = "session_login.jsp"; // 리다이렉트 기능
		
		function check() {
			alert("아이디 또는 비밀번호를 확인하세요.");
			location.href = "session_login.jsp";
		}
		
		check(); // 호출
		
	</script>
	
<%	
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