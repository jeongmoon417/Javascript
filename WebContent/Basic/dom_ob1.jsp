<%--
	**선택자(getElementBy~)의 위치**
	<haad>의 <script> --> <body> 순서로 실행 되기 때문에
	document.getElexmentById("~")로 body의 문서 객체를 가져올 수 없다 (script위치 에서)
		참고 : <script>는 HTML이 로딩 되기 전에 실행된다.
	이를 해결하기 위해
		1. <body> 영역의 아랫 부분에 <script>를 선언 하거나,
		2. window.onload = function() {...}에 작성한다.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>선택자의 위치</title>
<script type="text/javascript">

	//익명 함수 function() {}
	window.onload=function() {								//function:예약어!
		//val = document.getElementById("selector").value;
		//document.getElementById("eco").innerHTML = val;
		ecoTo();
	}

	//아래 경우도 가능
	//window.onload=ecoTo();
	
	function ecoTo () {
		val = document.getElementById("selector").value;
		document.getElementById("eco").innerHTML = val;
	}
</script>
</head>
<body>
	<input id="selector" value="hi ~~">
	<button onclick="ecoTo();">클릭</button> <br/>
	<div id="eco"> </div><br/>
	
</body>
</html>