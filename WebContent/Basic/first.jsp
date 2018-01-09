<%--
	javascript 시작하기 : 나이를 프롬프트로 입력받아 성인인지 여부 출력하기
	작성자: 이정문
	작성일 : 2018-01-09
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바 스크립트 연습코드</title>
<script type="text/javascript">
	var age = prompt("당신의 나이는?", "0");	//질의 응답 창 띄움
		if(age>=20) {
			document.write("당신은 성인입니다.");
			console.log("20세 이하");	//콘솔에 기록
		}
		else {
			document.write("당신은 미성년자입니다.");
		}
</script>
</head>
<body>

</body>
</html>