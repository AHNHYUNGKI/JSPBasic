<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");	
	String korean = request.getParameter("korean");
	String math = request.getParameter("math");
	String english = request.getParameter("english");
	
	// 값이 공백이라면 다시 화면으로...
	if(name.equals("") || korean.equals("") || math.equals("") || english.equals("")) {
		response.sendRedirect("quiz01.jsp");
	} else {
		int k_score = Integer.parseInt(korean);
		int m_score = Integer.parseInt(math);
		int e_score = Integer.parseInt(english);
		double t_avg = (k_score + m_score + e_score) / 3.0;
		if(t_avg >= 60) {
			response.sendRedirect("quiz01_pass.jsp");
		} else {
			response.sendRedirect("quiz01_fail.jsp");
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

</body>
</html>