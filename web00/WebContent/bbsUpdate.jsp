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
	String content=request.getParameter("content");
	
	BbsVO bag=new BbsVO();
	bag.setNo(no2);
	bag.setContent(content);
	
	
	BbsDAO2 dao=new BbsDAO2();
	dao.update(bag);
	
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
게시물수정 요청됨
<hr color="red">
수정할 게시물 번호: <%=no%><br>
수정할 내용: <%=content %><br>

<hr>
</body>
</html>