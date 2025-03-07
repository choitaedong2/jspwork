<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request.setCharacterEncoding(UTF-8);
	String name = request.getParameter("name1");
	String color = request.getParameter("color");
	System.out.println(name + "가 좋아하는 색상은 : " + color);
	
	String koColor = "";
	/*
	switch(color) {
	case "green":
		koColor = "초록색";
		break;
	case "red":
		koColor = "빨간색";
		break;
	case "orange":
		koColor = "주황색";
		break;
	default :
		koColor = "노란색";
	}
	*/
	
	if(color.equals("red"))
		koColor = "빨간색";
	else if(color.equals("orange"))
		koColor = "주황색";
	else if(color.equals("yellow"))
		koColor = "노란색";
	else 
		koColor = "초록색";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=color %>">
	<b><%=name %></b>님이 좋아하는 색상은 <b><%=koColor %></b>입니다.
</body>
</html>