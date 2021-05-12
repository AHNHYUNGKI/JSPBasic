<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
	1. a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동
	
	2. a태그를 이용해서 TestServlet의 URL맵핑경로를 확인해서 상대경로, 절대경로 이동
	
	3. img태그로 java.png파일을 상대경로, 절대경로로 참조 
	 -->
	<p> 
	<a href="../../request/req_video.jsp">req_video(상대경로)</a><br/>
	<a href="/JSPBasic/request/req_video.jsp">req_video(절대경로)</a><br/>
	</p>
	
	<p>
	<a href="../../banana">2(상대경로)</a><br/>
	<a href="/JSPBasic/banana">2(절대경로)</a><br/>	 
	</p>
	
	<p>
	<img src="../../request/img/1.png" width="200" alt="java">
	<img src="/JSPBasic/request/img/1.png" width="200" alt="java">
	</p>


</body>
</html>