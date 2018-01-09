<%--
	설명 : 정규 표현 객체 : 입력요소에 데이터를 규칙에 맞게 작성 했는지 판단해서 알려주는 객체
	작성자: 이정문
	작성일 : 2018-01-09
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정규 표현 객체</title>
<script type="text/javascript">
	var str="Html Css Jquery";
	var reg1=/css/;		//var reg1=new RegExp("css")
	
	//변수 str에 데이터가 reg1에 정규 표현 규칙을 잘 지켰으면 true를 반환하고, 
	//안 지켰을 경우 false를 반환합니다.
	
	var result_1 = reg1.test(str);	//false
	document.write(result_1);
	
	var reg2 = /css/i;		//var reg2=new RegExp("css", "i")
	
	var result_2 = reg2.test(str);	//true
	document.write(result_2);
	
/*
	자주 쓰는 정규식
★ 숫자만 가능 : [ 0 ~ 9 ] 주의 : 띄어쓰기 불가능
	/^[0-9]+$/

★ 이메일 형식만 가능 : [ test@nate.com ]
	/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/

★ 한글만 가능 : [ 가나다라 ... ] 주의 : ㄱㄴㄷ... 형식으로는 입력 불가능 , 띄어쓰기 불가능
	/^[가-힣]+$/

★ 한글,띄어쓰기만 가능 : [ 가나다라 ... ] 주의 : ㄱㄴㄷ... 형식으로는 입력 불가능 , 띄어쓰기 가능
	/^[가-힣\s]+$/

★ 영문만 가능 :
	/^[a-zA-Z]+$/

★ 영문,띄어쓰기만 가능
	/^[a-zA-Z\s]+$/

★ 전화번호 형태 : 전화번호 형태 000-0000-0000 만 받는다. ]
	/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/

★ 도메인 형태, http:// https:// 포함안해도 되고 해도 되고
	/^(((http(s?))\:\/\/)?)([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(\/\S*)?$/

★ 도메인 형태, http:// https:// 꼭 포함
	/^((http(s?))\:\/\/)([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(\/\S*)?$/

★ 도메인 형태, http:// https:// 포함하면 안됨
	/^[^((http(s?))\:\/\/)]([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(\/\S*)?$/

★ 한글과 영문만 가능
	/^[가-힣a-zA-Z]+$/;

★ 숫자,알파벳만 가능
	/^[a-zA-Z0-9]+$/;

★ 주민번호, -까지 포함된 문자열로 검색
	/^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))-[1-4][0-9]{6}$/
*/
	
	
</script>
</head>
<body>

</body>
</html>