<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>의 성격은<br>
	: 침착하며 감정에 휘둘리지 않고 무슨 사물을 대하든 가볍게 보지 않고 여간해서는 남의 말에 잘 움직이지 않고 정신력이 강하며 점잖고 자부심이 강함
</body>
</html>