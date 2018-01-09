<%--
	설명 : 적정 몸무게 구하기 - 신장, 체중을 프롬프트에 입력 시 적정체중과 현재 체중과의 차이를 출력
	작성자: 이정문
	작성일 : 2018-01-09
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>적정 체중 구하기</title>
<script type="text/javascript">
	var height = prompt("신장을 입력해주세요.","0");
	var weight = prompt("체중을 입력해주세요.", "0");
	
	//적정 체중 계산
	pWeight = (height - 100) * 0.9;
	document.write ("신장:" + height + "cm <br\>");
	document.write ("체중:" + weight + "kg <br\>");
	document.write ("적정 체중:" + pWeight + "kg <br\>");
	
	
	var dif = weight-pWeight;
	//document.write (typeof dif);
	var alt = "적정 체중은 " + pWeight + "이며, 현재 ";
	if(dif>0) {
		alt += "적정 체중에서 " + dif + "kg 초과한 것을 알 수 있습니다.";
	}
	else if (dif == 0) {
		alt += "적정 체중입니다.";
	}
	else {
		dif = -dif;
		alt += "적정 체중에서 " + dif + "kg 미달인 것을 알 수 있습니다.";
	}
	document.write (alt);
</script>
</head>
<body>

</body>
</html>