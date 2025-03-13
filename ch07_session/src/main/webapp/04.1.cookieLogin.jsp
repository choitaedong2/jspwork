<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++) {
		if(cookies[i].getName().equals("idKey")) {
			id = cookies[i].getValue();
		}
	}
	
	if(!id.equals("")) {
%>
	<script>
		alert("로그인 되어 있습니다");
		location.href="04.3.cookieLoginOK.jsp";
	</script>
<%	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="04.2.cookieLoginProc.jsp" method="post">
		<table border="1" align="center">
			<tr>
				<th colspan="2"><h2>Cookie Login</h2></th>
			</tr>
			<tr>
				<td width="50px" align="center">ID</td>
				<td><input name="id" required></td>
			</tr>
			<tr>
				<td align="center">PW</td>
				<td><input name="pw" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="LOGIN">&emsp;
					<input type="reset">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>