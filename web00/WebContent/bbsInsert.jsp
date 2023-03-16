<%@page import="multi.BbsDAO2"%>
<%@page import="multi.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1. 전달된 값 받아주기 -->
<!-- 2. dao오게 값전달 (dao이용) 생략 -->
<!-- 3. 전달된값 출력하는 결과물 html에 보내줌 -->
    <%
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String writer=request.getParameter("writer");
    
    BbsVO bag=new BbsVO();
    bag.setTitle(title);
    bag.setWriter(writer);
    bag.setContent(content);
    
    BbsDAO2 dao=new BbsDAO2();
    dao.insert(bag);
    
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
게시물 작성 요청됨
<hr color="red">
올린 게시물 제목: <%=title%><br>
올린 게시물 내용: <%=content%><br>
올린 게시물 작성자: <%=writer%><br>

</body>
</html>