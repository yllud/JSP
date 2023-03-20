<%@page import="multi.SongVO"%>
<%@page import="multi.SongDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->


<%
	// 자바코드 넣는 부분!!
//HttpServletRequest request=new HttpServletRequest();
//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
String title = request.getParameter("title"); //가져와서 저장
SongDAO dao = new SongDAO();
ArrayList<SongVO> list = dao.like(title);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
body {
	background: aqua;
}
</style>
</head>
<body>
	플레이리스트 목록
	<hr color="red">
	<table class="table table-dark table-striped">
		<tr>
			<td>제목</td>
			<td>가수</td>
			<td>장르</td>
		</tr>
		<%
			for (SongVO bag : list) {
		%>
		<tr>
			<td><a
				href="http://localhost:8888/web00/songOne.jsp?id=<%=bag.getId()%>"> <%=bag.getTitle()%>
			</a></td>
			<td><%=bag.getArtist()%></td>
			<td><%=bag.getGenre()%></td>


		</tr>
		<%
			}
		%>
	</table>
</body>
</html>