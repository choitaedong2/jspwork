<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mDao" class="member.MemberDao" />
<%
	String id = request.getParameter("id");
	boolean result = mDao.checkId(id);
	
	if(result) {
		out.print(id+"는 사용할 수 없습니다.");
	} else {
		out.print(id+"는 사용가능합니다.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  a태그 대신 버튼 사용 가능 -->
	<a href="" onclick="self.close()">닫기</a>
</body>
</html>