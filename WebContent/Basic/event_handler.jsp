<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- 애러 발생!
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