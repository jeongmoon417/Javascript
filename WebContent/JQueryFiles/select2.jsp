<%--
	설명: 하위요소 선택자
		$(a b): a의 하위요소 b선택
		$(a +b): a의 동생요소 b (같은 레벨의 요소)
		$(a:first) : a요소의 하위 요소 중 첫번째 요소
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>형요소 선택자 두번째</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var $menu = $("#menu");
		//$("li", $drinks).css("background-color", "pink");	//drink 안의 <li>요소들 선택
		//$("#tea", $drinks).css("background-color", "pink");	//drink 안의 #tea 선택;
		//$($drinks, "#tea").css("background-color", "pink");		//위와 순서가 다를 경우 불가
		$("#tea", "#drinks").css("background-color", "pink");		//#drinks 안의 #tea
		
		//$("li", "#eat").css("background-color", "pink");		//#drinks 안의 <li> 요소들 선택
		$("#kim", "#eat").css("background-color", "pink");		//#drinks 안의 #kim 선택
			
		//$("#juice").css("background-color", "yellow");		//#juice 선택
		//$("#ramen").css("background-color", "yellow");		//#ramen 선택
		console.log($("#ramen", "#juice").length);						//0
		
		$("#ramen, #juice").css("background-color", "yellow");			//#ramen과 #juice 선택 --> 적용O
		$("#coffee", "#kimchi").css("background-color", "blue");		//#kimchi 안의 #coffee 선택 --> 적용 대상 없음
		
		/***************** 정리 ******************/
		$("#wrap1_1", "#wrap1").css("background-color", "purple");		//wrap1 안의 wrap1_1선택 --> 적용O
		$("#wrap1_2, #wrap2_2").css("background-color", "orange");		//wrap1_2과 wrap2_2선택 --> 적용O
		
	});
</script>

</head>
<body>
	<h2>인접 관계 선택자</h2>
	<ul id="drinks">
		<li id="juice">주스</li>
		<li id="coffee">커피</li>
		<li id="tea">차</li>
		<li>우유</li>
		<li>물</li>
	</ul>
	<ol id="eat">
		<li id="kim">김밥</li>
		<li id="ramen">라면</li>
		<li id="kimchi">김치찌개</li>
		<li>된장국</li>
	</ol>
	<div id="wrap1">
		<div id="wrap1_1">1첫번째 DIV</div>
		<div id="wrap1_2">1두번째 DIV</div>
	</div>
	<div id="wrap2">
		<div id="wrap2_1">2첫번째 DIV</div>
		<div id="wrap2_2">2두번째 DIV</div>
	</div>
	
</body>
</html>