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
		request.setCharacterEncoding("utf-8");
	
		int score1 = Integer.parseInt(request.getParameter("score1"));
		int score2 = Integer.parseInt(request.getParameter("score2"));
		int score3 = Integer.parseInt(request.getParameter("score3"));
		int score4 = Integer.parseInt(request.getParameter("score4"));
		int score5 = Integer.parseInt(request.getParameter("score5"));
		
		int score[] = {score1,score2,score3,score4,score5};
		int avg = 0;
		
		int hscore = score[0];
		int lscore = score[0];
		
		for(int i=0; i<score.length; i++){
			avg += score[i];
			if(hscore<score[i]){
				hscore = score[i];
			}
			if(lscore>score[i]){
				lscore = score[i];
			}
		}
		avg = avg/5;
	%>
	<h3>오디션 참가자 정보 & 심사정보 출력화면</h3>
	
	참가자 이름 : <%=request.getParameter("name") %><br>
	참가자 생년월일 : 
	<% 
		int b1 = Integer.parseInt(request.getParameter("birth").substring(0, 4));
		int b2 = Integer.parseInt(request.getParameter("birth").substring(4, 6)); 
		int b3 = Integer.parseInt(request.getParameter("birth").substring(6, 8));
		
		String birth = b1 + "년" + b2 + "월" + b3 + "일";
		out.print(birth);
	%><br>
	참가자 성별 : 
	<% 
		String gender = request.getParameter("gender"); 
		if(gender.equals("M")){
			out.print("남");
		}else if(gender.equals("F")){
			out.print("여");
		}
	%><br>
	심사점수 평균 : <%=avg %><br>
	심사점수 최고점 : <%=hscore %><br>
	심사점수 최저점 : <%=lscore %><br>
</body>
</html>