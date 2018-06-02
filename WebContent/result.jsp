<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String[] menu = request.getParameterValues("menu");
	ArrayList<String> menuArray = new ArrayList<String>();
	
	for(String m : menu) {
		menuArray.add(m);
	}
	
	int today_menu = (int)(Math.random()*menuArray.size());
	
	System.out.println(menuArray);
	System.out.println(today_menu);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘 메뉴는?</title>
<style>
	#menuResultForm {
		margin: auto;
		width: 500px;
		border: black double 3px;
		text-align: center;
		
	}
	
	h1 {
		text-align: center;
		border-bottom: silver 1px dotted;
		font-family: "맑은 고딕";
	}
	
	label {
		text-align: center;
		font-size: 20px;
	}
</style>
</head>
<body bgcolor = "#E0F8F7">

<section id = "menuResultForm">

<h1>오늘의 메뉴</h1>
<label><%out.print(menuArray.get(today_menu)); %></label>

</section>
</body>
</html>