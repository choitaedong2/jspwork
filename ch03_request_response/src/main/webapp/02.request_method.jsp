<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Request Method</h1>
	프로토콜 : <%=request.getProtocol() %><p/>
	<%-- 모두 동일한 기능
	<% String protocol = request.getProtocol(); %>
	<%=protocol %>
	<%="프로토콜 : " + request.getProtocol() %> --%>
	서버의 이름 : <%=request.getServerName() %><p/>
	서버의 port번호 : <%=request.getServerPort() %><p/>
	사용자(클라이언트)의 주소 : <%=request.getRemoteAddr() %><p/>
	사용자(클라이언트)의 이름 : <%=request.getRemoteHost() %><p/>
	method : <%=request.getMethod() %><p/>
	요청 경로(URI) : <%=request.getRequestURI() %><p/>
	요청 경로(URL) : <%=request.getRequestURL() %><p/>
	현재 사용하는 브라우저 : <%=request.getHeader("User-Agent") %><p/>
	파일 type : <%=request.getHeader("Accept") %><p/>
</body>
</html>