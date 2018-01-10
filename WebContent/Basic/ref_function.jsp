<%--
	설명 : 익명 함수를 변수에 참조 시키기
	작성자: 이정문
	작성일 : 2018-01-09
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>함수</title>
<script type="text/javascript">
	var theFnc = function() {	//익명함수를 변수 theFnc에 참조시킴
		var i=0;
		i++;
		document.write(i);
	}
	
	theFnc();	//변수 Fnc에 참조된 함수를 호출
</script>
</head>
<body>

</body>
</html>