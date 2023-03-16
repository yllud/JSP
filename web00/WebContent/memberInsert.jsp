<%@page import="multi.MemberDAO2"%>
<%@page import="multi.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     브라우저가 보낸 데이터 받아야함=>자바로 짜야함 -->
<!--     브라우저가 보낸 데이터를 받을때 사용하는 부품 필요 -->


	<%
	// 자바코드 넣는 부분!!
	//HttpServletRequest request=new HttpServletRequest();
	//tomcat은 미리 request를 미리 만들어서 내장시켜놨음! 이미 위에 코드를 해놨음
	String id=request.getParameter("id");	//가져와서 저장
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	String tel=request.getParameter("tel");
	
	//가방을 만들어서 값들을 넣고(set)!
	MemberVO bag=new MemberVO();
	bag.setId(id);
	bag.setPw(pw);
	bag.setName(name);
	bag.setTel(tel);
	
	//dao에게 가방 전달!
	//jsp에서 자동 import - 해당 클래스 클릭 후 ctrl+shift+m
	MemberDAO2 dao=new MemberDAO2();
	dao.insert(bag);
	
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
회원가입 요청됨
<hr color="red">
가입한 id: <%=id%><br>
가입한 pw: <%=pw%><br>
가입한 name: <%=name%><br>
가입한 tel: <%=tel%><br>

<hr>
</body>
</html>