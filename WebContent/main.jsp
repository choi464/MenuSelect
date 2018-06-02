<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
<style>
	#select {
		margin: auto;
		border: black double 3px;
		width: 500px;
		text-align: center;
	}
	
	h1 {
		text-align: center;
		border-bottom: silver dashed 1px;
		font-family: cursive;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

//		function add_item(){
//			// pre_set 에 있는 내용을 읽어와서 처리..
//			var div = document.createElement('div');
//			div.innerHTML = document.getElementById('pre_set').innerHTML;
//			document.getElementById('field').appendChild(div);
//		}
	var menu_num = 0;
	function appendText() {
		menu_num++;
	    var menu_input = 'Menu' + '&nbsp' + menu_num + ' : <input type="text" name="menu"><br>';      // Create text with HTML
	    $("#field").append(menu_input);     // Append new elements
	}

</script>

</head>

<body bgcolor = "#E0F8F7">

<section id = "select">

<h1>Menu Select</h1>
메뉴 추가 버튼을 눌러<br>
메뉴를 추가하시오.
<br><br>
<!-- <input type="button" value="메뉴 추가 " onclick="add_item()"><br> -->
<button onclick="appendText()">메뉴 추가</button>

<form action = "result.jsp" method = "POST">

<!--
<div id="pre_set">
	Menu : <input type="text" name="menu">
</div>
 -->
 
<div id="field"></div>

<br><input type = "submit" value = "오늘 뭐 먹지?">

</form>

<!-- <br><br><a href = "test.jsp">테스트</a> -->

</section>
</body>
</html>