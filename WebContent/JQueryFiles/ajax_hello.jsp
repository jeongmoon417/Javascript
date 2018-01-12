<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ajax시작하기</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#d1").load("myText/document_2.txt");	//ajax: 메서드로 텍스트 파일에 문서를 불러와 선택한 요소의 내용을 바꿈
	});
</script>
</head>
<body>
	<div id="d1">내용</div>
</body>
</html>