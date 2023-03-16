<%@page import="multi.MemberVO"%>
<%@page import="multi.MemberDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->


	<%
	// 자바코드 넣는 부분!!
	//HttpServletRequest request=new HttpServletRequest();
	//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
	String id=request.getParameter("id");	//가져와서 저장
	String tel=request.getParameter("tel");
	
	MemberVO bag=new MemberVO();
	bag.setId(id);
	bag.setTel(tel);
	
	MemberDAO2 dao=new MemberDAO2();
	dao.update(bag);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background:lime;
}
</style>
</head>
<body>
회원수정 요청됨
<hr color="red">
수정할 id: <%=id%><br>
수정할 tel: <%=tel %><br>

<hr>
</body>
</html>