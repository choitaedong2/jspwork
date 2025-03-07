<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String msg = request.getParameter("msg");
	// getParameter는 String으로 값을 받아옴
	int count = Integer.parseInt(request.getParameter("count"));
	
	int c =0;
	/*
	while(c<count) {
		out.print(msg + "<br>");
		c++;
	}
	*/
	while(c < count) {
%>
	<%=msg %><br>
<%
		c++;
	}
%>

</body>
</html>