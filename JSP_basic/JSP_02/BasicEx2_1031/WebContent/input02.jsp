<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 입력화면 2-1</title>
</head>
<body>
	<h2>JSP 기초연습 2-1 - 다양한 입력 양식(1)</h2>
	조건 0. 사용자 정보 입력 화면 : input02.jsp, 사용자 정보 출력화면 : output02.jsp, 전송방식 :post<br>
	조건 1. 소속-학과 정보는 다음과 같이 처리하기 (none:초기값 선택&비활성화, E:스마트전자과, N:정보통신과, S:소프트웨어개발과, B:바이오화학과)<br>
	조건 2. 소속-학과 정보는 다음과 같이 처리하기 (none:초기값 선택&비활성화 , F:1학년, S:2학년, T:3학년)<br>
	조건 3. 소속-반 정보는 다음과 같이 처리하기 (none:초기값 선택&비활성화, 1:1반, 2:2반, 3:3반)<br>
	조건4. email의 도메인 정보는 다음과 같이 처리하기 (none:초기값 선택&비활성화, gmail:gmail.com, daum:daum.net, naver:naver.com)<br>
	-단 , 도메인을 선택안한 경우에는 출력화면에서 email.co.kr로 표기함.
	<hr>
	
	<h2>[강의 만족도 조사]</h2><br>
	
	<form action="output02.jsp" method="post">
		1. 소속 : <input type="text" name="school" placeholder="양영디지털고">
		<select name="department">
		<option value="value" selected disabled>선택
			<option value="E">스마트전자과
			<option value="N">정보통신과
			<option value="S">소프트웨어개발과
			<option value="B">바이오화학과
		</select> 
		<select name="grade">
		<option value="value" selected disabled>선택
			<option value="F">1학년
			<option value="S">2학년
			<option value="T">3학년
		</select> 
		<select name="class">
		<option value="value" selected disabled>선택
			<option value="1">1반
			<option value="2">2반
			<option value="3">3반
		</select> 
		<br>2. 이름 : <input type="name" name="name">
		<br>3. 이메일 : <input type="text" name="email"> @ 
		<select name="domain">
			<option value="value" selected>선택
			<option value="gmail">gmail.com
			<option value="daum">daum.net
			<option value="naver">naver.com
		</select> 
		<input type="checkbox" name="agree" value="agree">양디고 메일링 수신 동의
		<br>4. 오늘 특강의 전반적인 내용에 대해 만족도는 어느 정도입니까? 
		매우 불만족 
		<input type="radio" name="satisfaction" value="1">1
		<input type="radio" name="satisfaction" value="2">2
		<input type="radio" name="satisfaction" value="3">3
		<input type="radio" name="satisfaction" value="4">4
		<input type="radio" name="satisfaction" value="5">5
		매우 만족
		<br>5. 향후 이같은 프로그램이 있다면 듣고 싶은 과목은 무엇입니까?
		<input type="checkbox" name="Subject" value="C++">C++
		<input type="checkbox" name="Subject" value="C#">C#
		<input type="checkbox" name="Subject" value="JAVA">JAVA
		<input type="checkbox" name="Subject" value="Python">Python
		<input type="checkbox" name="Subject" value="웹디자인">웹디자인
		<br>6. 이번 프로그램에서 가장 좋았던 점과 느낀점을 글로 남겨주세요.
		<br><textarea rows="10" cols="50" name="textarea"></textarea>
		<br><input type="submit" value="제출하기"><input type="reset" name="취소">
	</form>
</body>
</html>