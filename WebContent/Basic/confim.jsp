<%--
	확인 메세지 사용 예
	작성자: 이정문
	작성일 : 2018-01-09
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>확인 메시지</title>
</head>
<script type="text/javascript">
	var checked = confirm("확인 하시겠습니까?");
	if (checked) {
		document.write("확인");
	}
	else {
		document.write("취소");
	}
</script>
<body>

</body>
</html>