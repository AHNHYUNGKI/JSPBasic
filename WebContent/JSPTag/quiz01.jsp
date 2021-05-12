<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int visitor = 0;	
%>   
<%
	int ran = (int)(Math.random() * 8) + 2;
	visitor++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	<%=visitor %>번째 방문자 입니다.<br/>
	<% if(visitor%10 == 0) { %>
		당첨입니다!
	<% } %>
	</p>
	
	<hr/>
	<h4>랜덤구구단 <%=ran %>단</h4>
	
	<p>
	이번에 나온 구구단은 <%=ran %>단 입니다.<br/>
	
	<% 
	for(int i = 1; i <= 9; i++) {
	%>
		<%=ran %> x <%=i %> = <%=ran*i %><br/>
	<%	
	}
	%>
	</p>
	
</body>
</html>