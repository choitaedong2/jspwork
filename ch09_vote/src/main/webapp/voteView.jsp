<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, ch09.*" %>
<jsp:useBean id="vDao" class="ch09.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals("")))
		num = Integer.parseInt(request.getParameter("num"));
	
	int sum = vDao.sumCount(num); // count의 합계
	ArrayList<VoteItem> vitem = vDao.getView(num); // 각 항목의 count
	VoteList vlist = vDao.getOneVote(num); // question
	
	String q = vlist.getQuestion();
	
	Random r = new Random();
%>
<!DOCTYPE html>
<html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {margin: 0 auto;}
	div {width: 500px;}
	.m30 {margin-top : 30px;}
</style>
</head>
<body>
	<div class="m30">
		<table class="table">
			<tr>
				<td colspan="4">Q : <%=q %></td>
			</tr>
			<tr>
				<td colspan="3">총 투표자: <%=sum %>명</td>
				<td>count</td>
			</tr>
				<%
					for(int i=0; i<vitem.size(); i++) {
						VoteItem v = vitem.get(i);
						String[] item = v.getItem();
						
						int rgbR = r.nextInt(256); //0~255
						int rgbG = r.nextInt(256); //0~255
						int rgbB = r.nextInt(256); //0~255
						String rgb = "rgb("+rgbR+","+rgbG+","+rgbB+")";
						
						// 각 항목이 몇 %인지
						int ratio= (int)(Math.ceil((v.getCount() / (double)sum)*100));
				%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=item[0] %></td>
				<td>
					<table width="<%=ratio %>" height="15" align="left">
						<tr>
							<td bgcolor="<%=rgb%>" style="border:none"></td>
						<tr>
					</table>
				</td>
				<td><%=v.getCount() %></td>
			</tr>
				<%
					}
				%>
		</table>
	</div>
</body>
</html>