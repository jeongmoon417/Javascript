<%--
	.prop() : 선택한 요소( element, <>)의 속성(attribute)을 반환/생성/변환
	
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#txt4").text( $("#st_1").prop("title") );	//txt4에 st_1의 속성 출력
		$("#st_1").prop("title", "단락태그");	//title="단락태그" 속성을 추가
		$("#txt1").text( $("#st_1").prop("title") );	//txt1에 st_1의 속성 출력
		
		
		$("#txt2").text( $("#st_1").prop("tagName") );	//tag name(p)
		$("#txt3").text( $("#sel").prop("selectedIndex") );
	});
</script>
</head>
<body>
<p id="st_1" title="내용1의 타이틀!">내용1</p>
<p id="txt1"></p>
<p id="txt2"></p>
<p id="txt3"></p>
<p id="txt4"></p>
<select id="sel">
	<option value="naver">네이버</option>
	<option value="nate" selected="selected">네이트</option>
	<option value="daum">다음</option>
</select>
</body>
</html>