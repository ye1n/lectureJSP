<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="output03.jsp">
	
		<h3>JSP 기초연습 2-2 - 다양한 입력 양식(2)</h3>
		조건 0. 사용자 정보 입력화면 : input03.jsp, 사용자 정보 출력화면 : output03.jsp, 전송방식 : POST<br><br>
		
		<h3>[메뉴 주문하기]</h3>
		
		<b>아웃백 스페셜 갈릭 스테이크</b><br>
		발사믹마늘이 어우러진 아웃백 시그니쳐 스테이크(220g)+추가 선택메뉴 함께 제공<br><br>
		
		1. 주문자 정보<br>
		- 이름 : <input type="text" name="name"> 주소 : <input type="text" name="addr"><br><br>
		
		2. 메뉴 정보<br>
		<b>가격</b><br>
		<input type="radio" name="price" value="220" checked="checked">220g	30,000원
		<hr>
		<b>스테이크굽기 선택</b><br>
		<input type="radio" name="grilling" value="mediumRare">미디엄레어 <input type="radio" name="grilling" value="medium">미디엄 <input type="radio" name="grilling" value="mediumWelldone">미디엄웰던
		<hr>
		<b>추가선택(최대 7개)</b><br>
		<input type="checkbox" name="menu" value="bread">부시맨브레드	1,500원<br>
		<input type="checkbox" name="menu" value="soup">양송이스프	3,000원<br>
		<input type="checkbox" name="menu" value="chip">감자칩	5,000원<br>
		<input type="checkbox" name="menu" value="sweetPotato">고구마	5,000원<br>
		<input type="checkbox" name="menu" value="friedRice">볶음밥	5,000원<br>
		<input type="checkbox" name="menu" value="salad">가든샐러드	5,000원<br>
		<input type="checkbox" name="menu" value="coke">콜라	1,000원<br>
		<hr>
		<b>수량	<input type="number" name="amount"></b>개<br><br>
		
		<input type="submit" value="장바구니 담기"> <input type="reset" value="취소">
	
	</form>
</body>
</html>