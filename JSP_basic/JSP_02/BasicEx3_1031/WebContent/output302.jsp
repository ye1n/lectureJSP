<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String num = request.getParameter("num");
		int age = Integer.parseInt(num.substring(0,2));
		age = 21-age;
		int birthM = Integer.parseInt(num.substring(2,4));
		int birthD = Integer.parseInt(num.substring(4,6));
		String birth = birthM + "월" + birthD + "일";
		int gender = Integer.parseInt(num.substring(7,8));
	%>
	<h3>고객 & 가용 멤버십 정보 출력</h3>
	
	고객명 : <%= request.getParameter("name") %><br>
	생일 : <%= birth %><br>
	
	연령대/성별 : <%=age%> / 
	<%
		if(gender == 1 || gender == 3){
			out.print("남자");
		}else if(gender == 2 || gender == 4){
			out.print("여자");
		}
	%><br>
	
	제공 쿠폰 : 
	<ul>
	<%
		//if(now = 생일){
	%>
			<li>생일기념쿠폰</li>
	<%
		//}
		String[] join = request.getParameterValues("join");
			if(join != null){
	%>
			<li>신규가입쿠폰</li>
	<%
			}
		String memberShip = request.getParameter("membership");
		if(memberShip != null){
			if(memberShip.equals("point")){
	%>
				<li>포인트사용</li>
	<%
			}else if(memberShip.equals("sale")){
	%>
				<li>5% 제휴카드 할인</li>
	<%
			}	
		}
		
	%>
	</ul>
	<br><br>
	
	<a href="input302.jsp">돌아가기</a>
</body>
</html>