<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color : red;
}
div{
	border : 1px solid orange;
	
/* 	border-top : 4px double blue; */
	
	height : 200px;
	margin : 3px;
	padding : 5px;
	
/* 	border-width : 10px 30px 50px; */

	overflow : auto;
	/* overflow : hidden scroll auto  가 올 수 있다.*/
}
</style>
</head>
<body>
<h1>JSP :  Java Server Page</h1>

<%
	request.setCharacterEncoding("utf-8");

	String area = request.getParameter("area");
	// area는 엔터 기호(\r\n)를 포함하고 있다.
	// 출력하는 div 요소에는 <br> 태그를 이용하여 줄바꿈 처리를 한다.
	
	area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
// 	area = area.replaceAll("\r\n", "<br>"); // 이렇게 한번에 지우기도 가능 !

// 	String food = request.getParameter("food");
	String[] food = request.getParameterValues("food");
	
	String str = "";
	for(int i = 0; i < food.length ; i++){
		str += food[i] + " ";	
	}
%>

<div><%= area %></div>
<%= str %>
</body>
</html>