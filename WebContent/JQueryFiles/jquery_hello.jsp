<%--
	설명: JQuery 시작하기 - p를 클릭시 사라짐 + 기타 연습
	선택자: 자바 스크립트는 인터프리터 언어이기 때문에 제이쿼리가 먼저 실행되고 난 후 <body>영역에 문서 로딩
			--> 선택자로 객체를 얻어올때 주의가 필요함 (1,2는 가능하지만/ 3은 불가)
	체이닝 기법 : title3과 같이 선택한 요소에 메서드를 연속으로 사용 가능
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
	$(document).ready(function(){
	    $("p, h2").click(function(){				//1. document가 생성되면 실행 (실행 가능)
	        $(this).hide();
	        alert("글자가 사라집니다");				//alert 사용 가능
	    });
	    
	    $("#showme").click(function(){
			 //$("p:hidden").css("display","block");		//아래와 같은 내용: p중 숨겨진 객체를 선택후 보이게 함
			 $("p:hidden").show();
			 
		});
	    
	});
	
	$(function(){								//2. 이부분도 body로딩 후 실행 (실행 가능)
		$("#title").css("color", "green");
		$("#title3").css("background-color", "purple").css("color", "yellow");	//체이닝 기법
	});
	
	$("#title2").css("color", "green");			//3. body로딩 전 실행 (실행 불가 : 애러 발생은 하지 않지만, 적용되지 않음)
</script>
</head>
<body>
<h1 id="title">제이쿼리</h1>
<h1 id="title2">제이쿼리2</h1>
<h1 id="title3">제이쿼리3</h1>
<h2>제이쿼리4</h2>
<p>Hello World</p>
<p>Click me away!</p>
<p>Click me too!</p>
<p>new version</p>
<ol>
	<li>첫번째 li</li>
	<li>두번째 li</li>
	<li>세번째 li</li>
</ol>
<button id="showme">보이기</button>
</body>
</html>