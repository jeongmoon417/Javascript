<%--
	find()예제:  <p> 문단을 단어 단위로 나누어 <span>으로 나누고, 마우스를 올리면 배경색을 변경하는 예제 
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
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
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