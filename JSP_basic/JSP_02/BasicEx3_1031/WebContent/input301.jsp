<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="output301.jsp" method="post">
		<h3>JSP 기초연습 3 - 요청파라미터 처리하기 1</h3>
		
		[심사위원 채점 정보]
		조건 0. 참가자 정보&심사점수 입력화면: input301.jsp, 참가자 정보&심사 정보 출력화면 : output301.jsp
		조건 1. 입력 항목 별 name 값 설정 : 이름(name), 생년월일(birth), 성별(gender), 심사위원1점수~심사위원5점수(score1~score5)
		조건2. "점수등록" 버튼을 누르면 output301.jsp로 사용자 입력 정보를 전송함. (HTTP method : POST방식)
		조건3. "다시쓰기" 버튼을 누르면 입력내용이 취소됨.
		
		<b>오디션 탐가자 정보 & 심사위원 점수 입력</b>
		<table border="1">
			<tr>
				<td>참가자 이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>참가자 생년월일(20210923)</td>
				<td><input type="number" name="birth"></td>
			</tr>
			<tr>
				<td>참가자 성별(남:M, 여:F)</td>
				<td><input type="radio" name="gender" value="M">남<input type="radio" name="gender" value="F">여</td>
			</tr>
			<tr>
				<td>심사위원1 점수(0~100)</td>
				<td><input type="number" name="score1" ></td>
			</tr>
			<tr>
				<td>심사위원2 점수(0~100)</td>
				<td><input type="number" name="score2"></td>
			</tr>
			<tr>
				<td>심사위원3 점수(0~100)</td>
				<td><input type="number" name="score3"></td>
			</tr>
			<tr>
				<td>심사위원4 점수(0~100)</td>
				<td><input type="number" name="score4"></td>
			</tr>
			<tr>
				<td>심사위원5 점수(0~100)</td>
				<td><input type="number" name="score5"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="점수 등록"><input type="reset" value="다시 쓰기"></td>
			</tr>
		</table>
	</form>
</body>
</html>