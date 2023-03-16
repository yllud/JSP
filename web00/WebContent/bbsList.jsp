<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->


	<%
	// 자바코드 넣는 부분!!
	//HttpServletRequest request=new HttpServletRequest();
	//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
	String no=request.getParameter("no");	//가져와서 저장
	int no2=Integer.parseInt(no);
	
	BbsDAO2 dao=new BbsDAO2();
	BbsVO bag=new BbsVO();
	bag=dao.select(no2);
	
	String title=bag.getTitle();
	String content=bag.getContent();
	String writer=bag.getWriter();
	
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background:lightblue;
}
</style>
</head>
<body>
게시물 검색(하나) 요청됨
<hr color="red">
검색한 게시물 번호: <%=no%><br>
검색한 게시물 제목: <%=title%><br>
검색한 게시물 내용: <%=content%><br>
검색한 게시물 작성자: <%=writer%><br>

<hr>
</body>
</html>