<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- VoteDao에서 가져온 값을 변수별로 사용하기 위해 java클래스 import-->
<%@ page import="vote.*, java.util.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
	* {margin: 0 auto;}
	div {width: 800px;}
	h2 {text-align: center;}
	.m30 {margin-top: 30px; text-align: center;}
	a {text-decoration: none; color:black; cursor:pointer;}
</style>
</head>
<body>
<div>
	<h2 class="m30">투표 프로그램</h2>
	<hr>
	
	<h4 class="m30">설 문 폼</h4>
	<jsp:include page="voteForm.jsp" />
	<hr>
	
	<h4 class="m30">설 문 리 스 트</h4>
	<table class="table">
		<tr align="center">
			<th>번호</th>
			<th>제목</th>
			<th>시작일~종료일</th>
		</tr>
		<%
			ArrayList<VoteList> alist = vDao.getList();
			for(int i=0; i<alist.size(); i++) {
				VoteList vlist = alist.get(i);
				int num = vlist.getNum();
				String question = vlist.getQuestion();
				String sdate = vlist.getSdate();
				String edate = vlist.getEdate();
				out.print("<tr>");
				out.print("		<td>"+ (alist.size()-i) +"</td>");
				out.print("		<td><a href='voteList.jsp?num="+num+"'>"+ question +"</a></td>");
				out.print("		<td>"+ sdate + " ~ " + edate +"</td>");
				out.print("</tr>");
			}
		%>
		<tr>
			<td colspan="3">
				<button type="button" onclick="location.href='voteInsert.jsp'">설문 작성하기</button>&emsp;
				<input type="button" onclick="location.href='../index.jsp'" value="홈으로">
			</td>
		</tr>
	</table>
</div>
</body>
</html>