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
	: 몹시 섬세하고 신경질적인 것 같기도 하고 반대로 쉬워보이면서도 차갑다. 두 가지 성격이 섞여있어서 잘 알기 어려운 사람이며 잡기 어려운 성격이라 이성교제에 있어서 제일 애를 먹는다
</body>
</html>