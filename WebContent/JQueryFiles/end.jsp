<%--
	end() 선택자 : 앞에 필터링이 일어나기 이전의 요소를 선택
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#box").find("span").find("strong").css("border", "1px solid red")
		.end().css("background-color", "yellow");
		//console.log($("#box").find("span").find("strong"));
	});
</script>
<title>end 메소드</title>
</head>
<body>
<div id="box">
	<span>
		스팬 시작
		<strong>
			<a href="#">내용</a>
		</strong>
		스팬 끝
	</span>
</div>
</body>
</html>