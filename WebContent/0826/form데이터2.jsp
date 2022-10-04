<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table{
	border : 2px solid gold;
}
td{
	width : 300px;
	height : 50px;
	text-align : center;
}
.title{
	background-color: lightgreen;
	width : 120px;
}
</style>

</head>
<body>
<%

request.setCharacterEncoding("UTF-8");

String userId = request.getParameter("id");
String userName = request.getParameter("name");
String userMail = request.getParameter("email");
String userTel = request.getParameter("tel");
String userAddr = request.getParameter("addr");
/* getParameter() : 괄호 안에 들어가는 변수는 html파일의 input태그의 이름임! */

String[] foods = request.getParameterValues("food");
String str = "";
for(int i = 0 ; i<foods.length ; i++){
	str += foods[i] + " ";
}

String file = request.getParameter("file");
//그냥 foods를 바로 뽑으면 주소값이 나오므로 for문 돌려서 값들을 뽑아야 함
%>

<table border="1">
	<tr>
		<td class="title">아이디</td>
		<td><%= userId %></td>
	</tr>
	<tr>
		<td class="title">이름</td>
		<td><%= userName %></td>
	</tr>
	<tr>
		<td class="title">이메일</td>
		<td><%= userMail %></td>
	</tr>
	<tr>
		<td class="title">전화번호</td>
		<td><%= userTel %></td>
	</tr>
	<tr>
		<td class="title">주소</td>
		<td><%=  userAddr %></td>
	</tr>
	<tr>
		<td class="title">좋아하는 음식</td>
		<td><%= str %></td>
	</tr>
	<tr>
		<td class="title">첨부파일</td>
		<td><%= file %></td>
		<!-- 여기에서 출력할때는 첨부파일 명임 String 
		실제로 파일 올리고 다운로드 하는 방법은 고급자바시간! -->
	</tr>
</table>
</body>
</html>