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
			success: function(result3){

				//console.log(typeof result3);	//object
				//console.log(result3);	//요청한 html 데이터	
				//console.log(typeof $(result3));	//object
				//console.log($(result3));	//r.fn.init[document] / 0:document
				//console.log($(result3).length);	//1
				//console.log(result3.length);		//undefined
				if($(result3).find("rank").length>0){		//xml데이터에 <rank>태그의 총 개수 (find-""태그의)
				//if(result3.find("rank").length>0){		//애러! html에 find메소드 사용 불가 (jquery에만 사용 가능)
					$(result3).find("rank").each(function(){
					//result3.find("rank").each(function(){	--> 불가..
						//console.log($(result3).find("rank"));	//r.fn.init(3)/ length:3/ 0:rank / 1:rank / 2:rank
						//console.log($(this));	//r.fn.init(1)
						//console.log($(this).length);		//1
						//console.log(typeof $(this));	//object
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

	find(selector/element)
	
	element(요소): <~>
--%>