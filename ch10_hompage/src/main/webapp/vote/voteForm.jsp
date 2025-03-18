<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vote.*, java.util.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals("")))
		num = Integer.parseInt(request.getParameter("num"));
	
	VoteList vlist = vDao.getOneVote(num);
	ArrayList<String> vitem = vDao.getItem(num);
	
	String question = vlist.getQuestion();
	int type = vlist.getType();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="voteFormProc.jsp" method="post">
		<table class="table">
			<tr>
				<td>Q : <%=question %></td>
			</tr>
			<tr>
				<td>
				<%
					for(int i=0; i<vitem.size(); i++) {
						String item = vitem.get(i);
						if(type==1) {
							out.print("<input type='checkbox' name='itemnum' value='"+i+"'>");
						} else {
							out.print("<input type='radio' name='itemnum' value='"+i+"'>");
						}
						out.print(item+"<br>");
					}
				%>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="투표">&emsp;
					<input type="button" value="결과" onclick="window.open('voteView.jsp?num=<%=num%>', '창이름', 'width=500, height=350')">&emsp;
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
	</form>
</body>
</html>