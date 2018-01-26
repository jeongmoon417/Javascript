<%--
	작성자 : 이정문(joengmoon.lee@cj.net) 
	작성일 : 2017.01.11
	내용 : 윈도우 객체
			실행과 동시에 popup창을 생성해 띄우고,
			이동버튼을 누를경우 특정 위치로 popup창 이동,
			크기 변환을 누를경우 특정 크기로 popup창 크기 변경
	
	* window : 브라우저 객체의 최상위 객체
	* 윈도우 매서드
		1. window.open ("url경로", "창이름", "옵션설정"); : 새창을 엶
		2. alert() : 경고창 띄움
		3. prompt() : 질의응답 창을 띄움
		4. confirm() : 확인 매시지 띄움
		5. moveTo() : 창의 장소 이동
		6. resizeTo() : 창의 위치 이동
		7. setInterval() : 일정 간격으로 지속적으로 실행문을 실행
		8. setTimeout() : 일정 간격으로 한번만 실행문을 실행
		
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>팝업창 연습</title>
<script type="text/javascript">

	//팝업 띄우기
	var pop = window.open("winpopup.jsp", "pop1", 
			"width=300, height=400, left=300, top=10, scrollbars=no, location=no");
	//var pop = window.open("winpopup.jsp", "pop1");
	//console.log(pop);
</script>
</head>
<body>
	<p>
		<button onclick="pop.moveTo(200, 300); pop.focus();">이동</button>
	</p>
	<p>
		<button onclick="pop.resizeTo(200, 300); pop.focus();">크기 변환</button>
	</p>
</body>
</html>