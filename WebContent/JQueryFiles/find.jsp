<%--
	작성자 : 이정문(joengmoon.lee@cj.net) 
	작성일 : 2017.01.16
	내용 : 단어 선택하기
		  
		  글 위에 마우스를 올리면 단어 별로 배경색을 변경
			버튼 위에 마우스를 올릴시에 초록색으로 버튼 색 변경,
			클릭시 버튼 클릭 되었다는 alert창 띄움
	
	****************************************************************
	find() : 선택한 요소에서 지정한 요소를 다시 찾는 필터링
	
	(참고url: https://api.jquery.com/find/)
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>find demo</title>
<style>
  p {
    font-size: 20px;
    width: 200px;
    color: blue;
    font-weight: bold;
    margin: 0 10px;
  }
  .hilite {
    background: yellow;
  }
</style>
<%-- <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>--%>
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
</head>

<body>
<p>
  When the day is short
  find that which matters to you
  or stop believing
</p>

<script type="text/javascript">
	var newText = $("p").text().split(" ").join("</span> <span>");
	newText = "<span>" + newText + "</span>";						//<span>단어</span>으로 나눔
	
	$("p")
	.html(newText).find("span").hover(function(){				//mouse over시에 배경색 변경
		$(this).addClass("hilite");
	}, function(){
		$(this).removeClass("hilite");
	});
</script>
</body>
</html>