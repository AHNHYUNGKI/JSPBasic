<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double bmi = Double.parseDouble(weight) / ((Double.parseDouble(height)/100) * (Double.parseDouble(height)/100));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		1. form태그를 이용해서 post형식 이름, 키, 몸무게 3가지를 입력받음
		2. quiz01_result.jsp로 데이터를 전송
		3. 해당페이지에서는 넘어간 값을 BMI지수로 처리합니다.
		BMI공식 = kg / (cm/100 * cm/100) -> double형이어야 하고,
			문자열이기 때문에 형변환 진행
		결과
		화면에 키, 몸무게, BMI지수를 출력
		조건문을 이용해서 BMI 25이상 과체중, 18이하 저체중, 나머지 정상 출력
	 -->
	 
	이름: <%=name %><br/>
	키: <%=height %><br/>
	몸무게: <%=weight %><br/>
	BMI지수 : <%=bmi %><br/>
	<%
		if(bmi >= 25) {
			out.println("과체중");
		} else if(bmi <= 18) {
			out.println("저체중");
		} else {
			out.println("정상");
		}
	%>
	
	 
</body>
</html>