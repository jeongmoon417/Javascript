<%--
	설명 : 사진 관리자 - 사진목록을 겔러리, 휴지통에 관리
	참고: http://jqueryui.com/droppable/#photo-manager
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사진 앨범</title>
<link rel="stylesheet" href="css/ui-darkness/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="css/ui-darkness/demos.css"/>
<style type="text/css">
	#gallery {float: left; width:65%; min-height:12em;}
	.gallery.custom-state-active {background: #eee;}
	.gallery li {float: left; width: 96px; padding: 0.4em; margin:0 0.4em 0.4em 0; text-align: center;}
	.gallery li h5 {margin: 0 0 0.4em; cursor: move;}
	.gallery li a {float: right;}
	.gallery li a.ui-icon-zoomin {float: left;}
	.gallery li img {width: 100%; cursor: move;}
	
	#trash {float: right; width: 32%; min-height: 18em; padding: 1%;}
	#trash h4 {line-height: 16px; margin: 0 0 0.4em;}
	#trash h4 .ui-icon {float: left;}
	#trash .gallery h5 {display: none;}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript">
	$(function () {
		var $gallery = $("#gallery"),	//겔러리
			$trash = $("#trash");		//쓰레기통
			
		/*아이템(사진): 드래그 기능 추가*/
		$("li", gallery).draggable({
			cancel: "a.ui-icon",	//클릭해도 드래그 시작하지 않음???
			revert: "invalid",		//드롭 하지 않으면, 아이템은 처음 점으로 돌아감 (invalid한 곳으로 가면)
			containment: "document",
			helper: "clone",		// Allows for a helper element to be used for dragging display.
			cursor: "move"
		});
			
		/*휴지통: 드롭 기능 추가*/
		$trash.droppable({
			accept: "#gallery > li",
			activeClass: "ui-state-highlight",
			classes: {
				"ui-droppable-active": "ui-state-highlight"
			},
			drop: function(event, ui) {			//draggable이 drop 되면 호출 되는 함수
				deleteImage(ui.draggable);		//ui.draggable: draggable element 제이쿼리 오브젝트
			}
		});
		
		/*겔러리: 드롭 가능 추가*/
		$gallery.droppable({
			accept: "#trash li",
			activeClass: "ui-state-highlight",
			classes: {
				"ui-droppable-active" : "ui-state-highlight"		//작동 하지 않음. 위의 코드로 작성
			},
			drop: function(event, ui) {
				recycleImage(ui.draggable);
			}
		});
		
		var recycle_icon = "<a href='link/to/recycle/script/when/we/have/js/off' title='Recycle this image' class='ui-icon ui-icon-refresh'>Recycle image</a>";		//되돌리기 함수
		/*이미지 지우기 : 이미지 위치를 변경 (갤러리 -> 휴지통), 크기 조정*/
		function deleteImage ($item) {
			$item.fadeOut (function(){					//패이드 아웃 후에 함수 호출
				var $list = $("ul", $trash).length ?		//trash 안의 ul 존재하지 않을 경우 생성 (select1.jsp 참조)
					$ ("ul", $trash) :
					$("<ul class='gallery ui-helper-reset' />").appendTo($trash);
				$item.find("a.ui-icon-trash").remove();
				$item.append(recycle_icon).appendTo($list).fadeIn(function(){
					$item
					.animate({width: "48px"})
					.find("img")
						.animate({height: "36px"});
				});
			});
		}
		
		var trash_icon = "<a href='link/to/trash/script/when/we/have/js/off' title='Delete this image' class='ui-icon ui-icon-trash'>Delete image</a>";
		/*이미지 복원 : 이미지 위치를 변경(휴지통 -> 갤러리), */
		function recycleImage ($item) {
			$item.fadeOut(function(){
				$item
					.find("a.ui-icon-refresh")
						.remove()					//refresh 아이콘 삭제
					.end()
					.css("width", "96px")			//전체 크기 증가
					.append( trash_icon )			//rash 아이콘 추가
					.find("img")					//이미지 크기 증가
						.css("height", "72px")
					.end()
					.appendTo($gallery)				//갤러리에 붙임
					.fadeIn();						//아이템 표시
			});
		}
		
		
	});
</script>
</head>
<body>
	<div class="ui-widget ui-helper-clearfix">
		<ul id="gallery" class="gallery ui-helper-reset ui-helper-clear-fix">
			<li class="ui-widget-content ui-corner-tr"> 
				<h5 class="ui-widget-header">고양이</h5>
				<img alt="CAT" src="images/cat.png" width="96" height="72">
				<a href="images/cat.png" title="크게보기" class="ui-icon ui-icon-zoomin">크게 보기</a>
				<a href="link/to/trash/script/when/we/have/js/off" title="이미지 삭제" class="ui-icon ui-icon-trash">삭제하기</a>
			</li>
			<li class="ui-widget-content ui-corner-tr"> 
				<h5 class="ui-widget-header">강아지</h5>
				<img alt="CAT" src="images/dog.png" width="96" height="72">
				<a href="images/cat.png" title="크게보기" class="ui-icon ui-icon-zoomin">크게 보기</a>
				<a href="link/to/trash/script/when/we/have/js/off" title="이미지 삭제" class="ui-icon ui-icon-trash">삭제하기</a>
			</li>
			<li class="ui-widget-content ui-corner-tr"> 
				<h5 class="ui-widget-header">토끼</h5>
				<img alt="CAT" src="images/rabbit.png" width="96" height="72">
				<a href="images/cat.png" title="크게보기" class="ui-icon ui-icon-zoomin">크게 보기</a>
				<a href="link/to/trash/script/when/we/have/js/off" title="이미지 삭제" class="ui-icon ui-icon-trash">삭제하기</a>
			</li>
			<li class="ui-widget-content ui-corner-tr"> 
				<h5 class="ui-widget-header">오리</h5>
				<img alt="CAT" src="images/duck.png" width="96" height="72">
				<a href="images/cat.png" title="크게보기" class="ui-icon ui-icon-zoomin">크게 보기</a>
				<a href="link/to/trash/script/when/we/have/js/off" title="이미지 삭제" class="ui-icon ui-icon-trash">삭제하기</a>
			</li>
		</ul>
		<div id="trash" class="ui-widget-content ui-state-default">
			<h4 class="ui-widget-header"><span class="ui-icon ui-icon-trash">Trash</span>Trash</h4>
		</div>
	</div>
</body>
</html>