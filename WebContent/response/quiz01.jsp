<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	1. form태그를 이용해서 post형식으로 이름, 국어, 수학, 영어 점수를 받습니다.
	2. quiz02페이지로 전송해서 평균을 구하고, 평균이 60이상이라면 합격페이지로 이동,
	미만이라면 불합격페이지로 이동
	3. 넘어가는 값이 없는 값이라면 다시 입력받로록 (리다이렉트) 처리 ("" 이라면)

	--%>
	
	<div>
		<form action="quiz02.jsp" method="post">
		<span>점수 입력!</span><br/>
		이름: <input type="text" name="name" placeholder="이름" required><br/>
		국어: <input type="text" name="korean" placeholder="국어" required><br/>
		수학: <input type="text" name="math" placeholder="수학" required><br/>
		영어: <input type="text" name="english" placeholder="영어" required><br/>
		
		<input type="submit" value="확인">
		</form>
	
	</div>

</body>
</html>