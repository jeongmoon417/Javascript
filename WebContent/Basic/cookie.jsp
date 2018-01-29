<%--
	작성자 : 이정문(joengmoon.lee@cj.net) 
	작성일 : 2017.01.29
	내용 : 쿠키
		   
	쿠키 (cookie) : 로컬 컴퓨터의 작은 텍스트 파일에 저장된 데이터 	   
	
	웹서버가 브라우저에게 웹페이지를 보내면 연결은 끊어지고, 서버는 사용자에 대한 모든 것을 잊어버림 
	   --> 이를 해결하기 위해 쿠키 사용 "사용자(클라이언트)에 대한 정보를 기억하기 위한 방법"	 
	클라이언트가 웹페이지에 방문하면 클라이언트 정보를 쿠키에 저장 
	사용예 : 브라우저가 서버에 웹페이지를 요청할때, 페이지에 포함된 쿠키를 요청에 추가 -> 사용자에 대한 필요한 정보를 서버가 기억함
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	window.onload=function() {								//function:예약어!
		var showCookieBtn = document.getElementById("showCookie");
		showCookieBtn.onclick = function(){
			
		}
	};
	
	function setCookie (cname, cvale, exdays) {
		var d = new Date();
		d.setTime(d.getTime() + (exdays*24*60*60*1000));
		var expires = "expires=" + d.toGMTString();
		document.cookie = cname + "=" cvalue + ";" + expires + ";path=/";
	}
</script>
<body>
	<button id="showCookie">쿠키 보기</button>
</body>
</html>