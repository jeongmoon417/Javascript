<%--
	map매서드 : 배열의 데이터를 변환시켜 다시 새로운 배열 객체로 만듦, (지정한 값으로 새로운 배열을 만듦)
	
	배열객체.map(function(){...})
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>map 매소드</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

	var arrName=["갑", "을", "병", "정"];

	$(function(){
		var arr = arrName.map(function(i, k){
			return i+k;
		});
		console.log(arr);	//["갑0", "을1", "병2", "정3"]
	});
	
</script>
</head>
<body>

</body>
</html>