<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>JSP 기초연습 2-1 - 강의 만족도조사 결과 출력</h2>
	
	1. 이름 : 
	<% 
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String school = request.getParameter("school");
		String department = request.getParameter("department");

		String result1 = "";
		if(department.equals("E")){
			result1 = "스마트전자과";
		}else if(department.equals("N")){
			result1 = "정보통신과";
		}else if(department.equals("S")){
			result1 = "소프트웨어개발과";
		}else if(department.equals("B")){
			result1 = "바이오화학과";
		}
		String grade = request.getParameter("grade");
		String result2 = "";
		if(grade.equals("F")){
			result2 = "1학년";
		}else if(grade.equals("S")){
			result2 = "2학년";
		}else if(grade.equals("T")){
			result2 = "3학년";
		}
		String Class = request.getParameter("class");
		String result3 = "";
		if(Class.equals("1")){
			result3 = "1반";
		}else if(Class.equals("2")){
			result3 = "2반";
		}else if(Class.equals("3")){
			result3 = "3반";
		}
	%><%= name+"( 양영디지털고등학교 " + result1 +" "+ result2 +" "+ result3 +" )"%>
	<br>2. 이메일 : 
	<% 
		String email = request.getParameter("email");
		String domain = request.getParameter("domain");
		if(domain.equals("value")){
			out.print(email +".co.kr");
		}else{
			out.print(email +"@"+ domain+".com");
		}
	%>, 메일 수신 여부 : 
	<% 
		String[] agree = request.getParameterValues("agree");
		if(agree == null){
			out.print("NO");
		}else{
			out.print("YES");
		}
	%>
	<br>3. 특강 만족도 : 
	<%
		String satisfaction = request.getParameter("satisfaction");
		out.print(satisfaction);
	%>
	<br>4. 추후 신청하고 싶은 교과목 : 
	<%
		String[] Subject = request.getParameterValues("Subject");
		for(String sub : Subject){
			out.print(sub + " ");
		}
	%>
	<br>5. 특강에 대한 의견 : <%= request.getParameter("textarea") %>
	<br><br><a href="input02.jsp">돌아가기</a>
	
</body>
</html>