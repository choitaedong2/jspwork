<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals("")))
		num = Integer.parseInt(request.getParameter("num"));
	
	String[] itemnum = request.getParameterValues("itemnum");
	
	boolean result = vDao.updateCount(num, itemnum);
	String msg= "투표에 실패하였습니다.";
	
	if(result) {
		msg = "투표를 추가하였습니다.";
	}
%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	alert("<%=msg %>");
	location.href = "voteList.jsp?num=<%=num %>";
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>