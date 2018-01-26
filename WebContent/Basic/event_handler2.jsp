<%--
	작성자 : 이정문(joengmoon.lee@cj.net) 
	작성일 : 2017.01.02 
	내용 : 이벤트/ 이벤트 핸들러
			버튼 위에 마우스를 올릴시에 초록색으로 버튼 색 변경,
			클릭시 버튼 클릭 되었다는 alert창 띄움
			
	* 이벤트 : 브라우저에서 방문객이 취하는 동작
	* 이벤트 핸들러 : 이벤트가 발생 했을 때 자바 스크립트 실행문을 실행하는 것
	* 이벤트를 적용하는 방법
		1. 요소에 직접 등록 : <button id="myBtn" onclick="alert('버튼 클릭!')">
		2. 요소에 이벤트 등록 속성을 빼고 문서 객체 구조(DOM)를 이용하여 지정된 요소에 
		    이벤트를 등록하는 방법 
			: documnet.getElementById("myBtn").onClick=function(){..};
			
	*** 주의 *** : 선택자(getElementBy~)의 위치
					<haad> --> <body> 순서로 실행되므로, <head>안에 <javascript>를 선언하면, 
					THML을 읽어오는 것(loading) 보다 스크립트가 먼저 실행
					document.getElexmentById("~")로 script위치 에서 body의 문서 객체를 가져올 수 없다
					참고 : <script>는 HTML이 로딩 되기 전에 실행된다.
					---> 해결
						1. <body> 영역의 아랫 부분에 <script>를 선언 하거나,
						2. window.onload = function() {...}에 작성.  
						   jquery경우 $(document).ready(function(){}); 또는 $(function(){});
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- 아래는 애러 
(Uncaught TypeError: Cannot set property 'onmouseover' of null at event_handler.jsp:12): 
위의 주의 사항! --%>
<%--
<script type="text/javascript">
	var theBtn = document.getElementById("theBtn");
	theBtn.onmouseover = function() {
		theBtn.style.backgroundColor="green";
	}
	theBtn.onclick = function() {
		alert("버튼 클릭!");
	}
</script>
--%>
</head>
<body>
	<button id="theBtn" style="background-color:blue; color:white">클릭</button>
	<script type="text/javascript">
		var theBtn = document.getElementById("theBtn");
		theBtn.onmouseover = function() {
			theBtn.style.backgroundColor="green";
		}
		theBtn.onmouseout = function() {
			theBtn.style.backgroundColor="blue";
		}
		theBtn.onclick = function() {
			alert("버튼 클릭!");
		}
	</script>
</body>
</html>