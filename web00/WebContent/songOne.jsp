<%@page import="multi.SongVO"%>
<%@page import="multi.SongDAO"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.MemberValuePair"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->


<%
	// 자바코드 넣는 부분!!
//HttpServletRequest request=new HttpServletRequest();
//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
String id = request.getParameter("id"); //가져와서 저장

SongVO bag = new SongVO();
SongDAO dao = new SongDAO();

bag = dao.select(id);

//String id2 = bag.getId();
String title=bag.getTitle();
String artist=bag.getArtist();
String genre=bag.getGenre();
String img=bag.getImg();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	background: aqua;
}
</style>

</head>
<body>
	노래 검색
	<hr color="red">
	<table>
<!-- 		<tr> -->
<!-- 			<td>검색한 id</td> -->
<%-- 			<td><%=id2%></td> --%>
<!-- 		</tr> -->
		<tr>
			<td>노래 제목</td>
			<td><%=title%></td>
		</tr>
		<tr>
			<td>가수</td>
			<td><%=artist%></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><%=genre%></td>
		</tr>
		<tr>
			<td>노래 표지</td>
			<td><img src="image/<%=img%>" width=200 height=200>
			</td>
		</tr>

	</table>
	<hr>

</body>
</html>