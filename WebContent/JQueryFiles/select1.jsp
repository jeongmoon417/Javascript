<%--
	설명: 하위요소 선택자
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>하위요소 선택자</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#wrap li").css("border", "1px solid red");	//wrap의 하위요소 선택;
		$("#tea").prev().css("background-color", "pink");	//형 요소 선택;
		$("#tea +li").css("background-color", "yellow");	//동생 요소 선택;
		$("li:first").css("background-color", "PowderBlue");	//li중 첫번째 요소 선택;
	});
</script>

</head>
<body>
	<h2>인접 관계 선택자</h2>
	<ul id="wrap">
		<li>주스</li>
		<li>커피</li>
		<li id="tea">차</li>
		<li>우유</li>
		<li>물</li>
	</ul>
</body>
</html>