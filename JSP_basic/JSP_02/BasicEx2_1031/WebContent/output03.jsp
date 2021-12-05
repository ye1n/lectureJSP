<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSP 기초연습 2-2 : 아웃백 주문 결과 출력</h3><br>
	
	1. 주문자 정보<br>
	- 이름 : <%= request.getParameter("name") %> / - 주소 : <%= request.getParameter("addr") %><br><br>
	
	<%
		int price = 30000;
		String menu = "";
		String[] list = request.getParameterValues("menu");
		for(String li : list){
			if(li.equals("bread")){
				menu += " 부시맨브레드";
				price += 1500;
			}
			if(li.equals("soup")){
				menu += " 양송이스프";
				price += 3000;
			}
			if(li.equals("chip")){
				menu += " 감자칩";
				price += 5000;
			}
			if(li.equals("sweetPotato")){
				menu += " 고구마";
				price += 5000;
			}
			if(li.equals("friedRice")){
				menu += " 볶음밥";
				price += 5000;
			}
			if(li.equals("salad")){
				menu += " 가든샐러드";
				price += 5000;
			}
			if(li.equals("coke")){
				menu += "콜라";
				price += 1000;
			}
		}
	%>
	2. 주문 메뉴<br>
	- 아웃백 스페셜 갈릭 스테이크(220g) / 
	<%
		String grilling = request.getParameter("grilling");
		if(grilling.equals("mediumRare")){
			out.print("미디엄레어");
		}else if(grilling.equals("medium")){
			out.print("미디엄");
		}else if(grilling.equals("mediumWelldone")){
			out.print("미디움웰던");
		}
	%><br>
	
	- 추가 선택 메뉴 : <%= menu %><br>
	- 주문 수량 : 
	<% 
		int amount = Integer.parseInt(request.getParameter("amount")); 
		price *= amount;
		out.print(amount);
	%><br><br>
	
	3. 결제 금액 : <%=price%>원<br><br>
	
	<a href="input03.jsp">돌아가기</a>
</body>
</html>