<%--
	each 메소드 : 선택한 여러 개의 요소들에 각각 순차적으로 하나씩 접근할 때 사용
	
	1.	$(요소선택).each(function(arg1, arg2){...});
	2.	$.each(요소선택, function(arg1, arg2){});
	
	매개 변수
		arg1 : 순차적으로 접근해 선택된 요소
		arg2 : 인덱스 번호 (0,1,2,...)
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>each 메소드</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#m li").text("리스트1");	//선택된 객체의 텍스트를 모두 텍스트로 바꿈
		
		$("#m2 li").each(function(i, k){
			$(k).text("리스트2: "+ i);	//리스트2 + 인덱스 출력
		});
		
		$.each($("#m3 li"), function(i, k){
			$(k).text("리스트3: "+ i);	//리스트2 + 인덱스 출력
		});
	});
</script>
</head>
<body>
<ul id="m">
	<li>내용1</li>
	<li>내용2</li>
	<li>내용3</li>
</ul>

<ul id="m2">
	<li>내용1</li>
	<li>내용2</li>
	<li>내용3</li>
</ul>

<ul id="m3">
	<li>내용1</li>
	<li>내용2</li>
	<li>내용3</li>
</ul>
</body>
</html>