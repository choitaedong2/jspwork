<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문</title>
</head>
<body>
나의 이름은 <%=name %> 입니다.<br>
학년은 <%= grade %>학년 입니다.<br>

	<%! // 멤버변수 : 위치와 상관없이 사용(우선순위로 선언되기 때문에 아래에서 작성하여도 호출 가능)
		String name = "박서우";
		int grade = 3;
	%>
	<% // 지역변수
		String name2 = team + "이학생";	
	%>
	<%! // 전역변수
		String team = "더조은";
	%>
</body>
</html>
<%--
class A {
	String name = ""; <%! %>

	void main() {
		System.out.println(name);
		System.out.println(num);
		
		int num = 50;
	}
}
 --%>