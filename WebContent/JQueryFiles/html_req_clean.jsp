<%--
	ajax로 HTML요청하기
	html요청후, 파싱해서 데이터 출력
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ajax로 HTML요청하기</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({	//외부에 데이터를 전송하거나 요청
			url: "myText/rank2.xml",	//데이터를 요청할 url주소
			dataType: "xml",			//수신할 데이터 타입: xml
			success: function(result3){		//데이터 수신 시 실행할 함수
				if($(result3).find("rank").length>0){		//xml데이터에 <rank>태그의 총 개수
					$(result3).find("rank").each(function(){
						var name=$(this).find("k").text();
						var result2="<li>"+name+"</li>";
						$("#wrap ol").append(result2);
					});
				}
			}
		});
	});
</script>
</head>
<body>
<h1>받아 온 인기 검색어</h1>
<div id="wrap">
<ol></ol>
</div>
</body>
</html>

<%--
	참고 jquery 메소드

	* find(selector/element)
	
	
	
	element(요소): <~>
--%>