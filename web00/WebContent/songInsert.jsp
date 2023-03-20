<%@page import="multi.SongVO"%>
<%@page import="multi.SongDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->

<jsp:useBean id="bag" class="multi.SongVO"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/>
	<%
	// 자바코드 넣는 부분!!
	//HttpServletRequest request=new HttpServletRequest();
	//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
	
	//dao에게 가방 전달!
	//jsp에서 자동 import - 해당 클래스 클릭 후 ctrl+shift+m
	SongDAO dao=new SongDAO();
	dao.insert(bag);
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background:aqua;
}
</style>
</head>
<body>
노래추가 요청됨
<hr color="red">
<img src="image/<%=bag.getImg()%>" width="200" height="200"><br>
id: <%=bag.getId()%><br>
title: <%=bag.getTitle()%><br>
artist: <%=bag.getArtist()%><br>
genre: <%=bag.getGenre()%><br>



<hr>
</body>
</html>