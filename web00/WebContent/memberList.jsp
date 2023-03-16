<%@page import="multi.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="multi.MemberDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->


<%
	// 자바코드 넣는 부분!!
//HttpServletRequest request=new HttpServletRequest();
//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
MemberDAO2 dao = new MemberDAO2();
ArrayList<MemberVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: lime;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	회원검색(전체) 요청됨
	<hr color="red">
	<table class="table table-dark table-striped">
		<tr>
			<td>id</td>
			<td>pw</td>
			<td>name</td>
			<td>tel</td>
		</tr>
		<%
			for (MemberVO bag : list) {
		%>
		<tr>
			<td><a
				href="http://localhost:8888/web00/memberOne.jsp?id=apple1"> <%=bag.getId()%>
			</a></td>
			<td><%=bag.getPw()%></td>
			<td><%=bag.getName()%></td>
			<td><%=bag.getTel()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>