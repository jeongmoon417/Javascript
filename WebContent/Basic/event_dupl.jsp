<%--
	설명: 이벤트 등록시, 마우스 클릭과 마우스 오버 이벤트를 등록시켜 배경색이 바뀌도록 함
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이벤트 중복 처리</title>
<script type="text/javascript">
	var colors = ["white", "yellow", "aqua", "purple"];
	var i=0;
	function colorBg() {
		i++;
		console.log(i);
		if (i >= colors.length) {	//i 범위 제함
			i=0;
			
		}
		var bodyTag = document.getElementsByTagName("body")[0];
		bodyTag.style.backgroundColor=colors[i];
	}
	
	window.onload=function() {
		var btn1=document.getElementById("btn1");
		var btn2=document.getElementById("btn2");
		
		btn1.onclick = function() {
			colorBg();
		}
		
		btn2.onmouseover = btn2.onfocus = function() {		
			//onmouseover와 onfocus 두가지 경우에 모두 이벤트 등록
			//tab 키로 focus 시켜도 이벤트 실행 가능
			colorBg();
		}
	}
</script>
</head>
<body>
<button id="btn1">버튼1</button><br/>
<button id="btn2">버튼2</button><br/>
</body>
</html>