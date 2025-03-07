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
	: 무슨 사물을 대하든 염려하며 조심성이 강하고 감동을 잘하며 자기를 희생해서라도 다투기를 피함
</body>
</html>