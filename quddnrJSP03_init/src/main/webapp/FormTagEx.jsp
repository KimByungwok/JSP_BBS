<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>
			<form action="form01" method="Post">
				ID : <input type = "text" name = "id" size = 10><br>
				PW :<input type = "password" name = "pw" size = 10><br>
				이름 : <input type ="text" name ="name" size = 5><br>
				전화번호 : <select name = "firstNum">
				<option value = "010">010</option>
				<option value = "011">011</option>
				<option value = "015">015</option>
				<option value = "019">019</option>
				</select> 
				- <input type = "text" name = "secondNum" size = 4>
				- <input type = "text" name = "ThirdNum" size = 4><br>
				취미 : 
				<input type = "checkbox" name = "hobby" value = "game">게임 &nbsp;
				<input type = "checkbox" name = "hobby" value = "book">독서 &nbsp;
				<input type = "checkbox" name = "hobby" value = "sleep">시체 놀이 &nbsp;
				<input type = "checkbox" name = "hobby" value = "Movie">영화 &nbsp;
				<input type = "checkbox" name = "hobby" value = "pit">운동 &nbsp;<br>
				성별 : 
				<input type = "radio" name = "sex" value = "M">남자 &nbsp;
				<input type = "radio" name = "sex" value = "F">여자 &nbsp;<br>
				
				<input type = "submit" value = "서버로 보내"><br>
				
				<input type = "reset" value = "내용 초기화">
				
			</form>
		</h1>
	</body>
</html>


<!--    
	html form tag 
    html 에서 form tag 란?
   서버쪽으로 정보를 전달할 떄 사용되는 태그
   
    input - 입력
    type - 태그 종류 지정
    type = text - 일반적인 텍스트 입력
    type = password - 패스워드 처럼 ***으로 입력
    type = submit - 전송 버튼(버튼 자동 생성) form 내의 데이터를 전송할 때 사용
    type = reset - form 내의 데이터를 초기화할 때 사용
    type = checkbox - 데이터 값을 여러 개 전송해야 할 때 사용
    type = radio - 여러 개의 데이터 값 중 한 개 값만을 전송할 때 사용 , checkbox 와 구분이 필요
    type = select - 리스트 형태의 데이터 사용
    
    value - name에 해당하는 값
    name - Input tag 의 이름
    
    
    form tag에서 action tag 는 목적지(목적 파일)를 지정해줌 (지정한 곳으로 감)
    component 구성 요소
   
   -->