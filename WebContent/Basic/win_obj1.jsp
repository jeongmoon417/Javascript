<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>팝업창 연습</title>
<script type="text/javascript">
	var pop = window.open("winpopup.jsp", "pop1", "width=300, height=400, left=300, top=10, scrollbars=no, location=no");
	//var pop = window.open("winpopup.jsp", "pop1");
	console.log(pop);
</script>
</head>
<body>
	<p>
		<button onclick="pop.moveTo(200, 300); pop.focus();">이동</button>
	</p>
	<p>
		<button onclick="pop.resizeTo(200, 300); pop.focus();">크기 변환</button>
	</p>
</body>
</html>