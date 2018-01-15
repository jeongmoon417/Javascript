<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jason으로 요청 보내기</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		console.log("function start")
		$.ajax({
			url: "myText/rank.json",
			dataType: "json",
			success: function(result){
				console.log("START");
				console.log(result);
				$.each(result.rank, function(i, d){
					console.log(result.rank);
					$("#wrap ol").append("<li>" + d["k"] + "</li>");
					console.log(i + d["k"]);
				})
			}
		});
	});
</script>
</head>
<body>
<h1>인기검색어</h1> 
<div id="wrap">
	<ol></ol>
</div>
</body>
</html>