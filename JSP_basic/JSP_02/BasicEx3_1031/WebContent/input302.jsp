<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="output302.jsp" method="get">
		<h3>JSP 기초연습 3 - 요청파라미터 처리하기 2</h3>
		
		[조건]<br>
		0. 사용자 정보&멤버십 선택화면: input302.jsp, 정보 출력화면:output302.jsp (HTTP메소드:POST)<br>
		1. 입력받은 정보를 이용해서 생일, 연령대, 성별, 적용쿠폰 목록을 출력함.<br>
		- 연령대 출력 : 유아(조건:10세 미만), 10대,20대, ...,60대,70대 이상<br>
		- 성별 : 주민번호 8번째 값이 1,3이면 "남성", 2,4 이면 "여성"<br>
		<hr>
		
		<br><b>고객 정보 & 멤버십 안내</b><br><br>
		
		<b>[멤버십 종류]</b><br>
		<ul>
			<li>생일기념쿠폰(제휴할인 혜택과 중복 가능)</li>
			<li>신규 가입 웰컴쿠폰 (제휴할인 혜택과 중복 가능)</li>
			<li><input type="radio" name="membership" value="point">포인트 사용 <input type="radio" name="membership" value="sale">5% 제휴카드 할인 (포인트와 제휴카드 할인은 중복 불가)</li>
		</ul>
		
		<b>[고객 입력 정보]</b><br>
		<ul>
			<li>이름 : <input type="text" name="name"></li>
			<li>주민등록번호(예: 210927-3001111):<input type="text" name="num"></li>
			<li><input type="checkbox" name="join" value="join">신규가입</li>
		</ul>
		
		<input type="submit" value="전송하기"> <input type="reset" value="취소">
	</form>
	
</body>
</html>