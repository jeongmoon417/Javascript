<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jquery를 이용한 이벤트 처리</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		var btn1 = $("#btn1");
		var btn2 = $("#btn2");
		var colName = $("#colName");
		
		btn1.click(function(){		//
			changeColor();
		})
		btn1.hover(function(){	//마우스를 올렸을때
			btn1.css("backgroundColor", "pink");
		}, function(){	//마우스를 벗어낫을때
			btn1.css("backgroundColor", "yellow");
		});
		colName.click(function(){		//클릭시 내용 지우기
			colName.val("");
		});
		colName.keydown(function (key){		//엔터키 눌렀을때에 div색 변환
			if(key.keyCode==13){
				changeColor();
			}
		});
		function changeColor (){			//함수 : 사각형의 색 바꿈
			var col = colName.val();
			$("#square").css("backgroundColor", col);
		}
	});
</script>
</head>
<body>
	<div id="square" style="background-color: red; width: 200x; height: 200px;"></div><br/>
	<input id="colName" type="text" value="red">
	<button id="btn1">버튼1</button><br/>
	<div id="desc">색을 입력합니다.</div></div>
</body>
</html>