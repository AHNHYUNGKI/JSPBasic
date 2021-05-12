<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	선언자, 스크립트릿을 적절하게 사용
	어피치, 라이언, 제이지, 무지, 프로도를 가지고 있는 배열 생성
	랜덤하게 선택된 카카오프렌즈를 list에 추가하는 형식으로 작성을 합니다.
--%>
<%!
	String[] kakaos = {"어피치", "라이언", "제이지", "무지", "프로도"};
	ArrayList<String> list = new ArrayList<>();
	Random ran = new Random();	
%>
<%
	int r = ran.nextInt(kakaos.length);
	list.add(kakaos[r]);
	int count = 0;
	for(String s : list) {
		if(s.equals(kakaos[r])) {
			count++;
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h4>[<%=kakaos[r] %>] 님이 입장</h4>
	<h4>현재 같은 카카오 프렌즈는 <%=count %>명입니다.</h4>
	
	<h2>현재 구성정보</h2>
	
	<p>
	<%=list.toString() %>
	(<%=list.size() %>명 참가중)
	</p>
	
	<%
		if(list.size() == 10) {
			list.clear();
		}
	%>
	
	
</body>
</html>