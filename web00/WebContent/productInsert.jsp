<%@page import="multi.ProductDAO"%>
<%@page import="multi.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1. 전달된 값 받아주기 -->
<!-- 2. dao오게 값전달 (dao이용) 생략 -->
<!-- 3. 전달된값 출력하는 결과물 html에 보내줌 -->

<!-- jsp에서만 사용가능 값 받아오고 가방에 알아서 넣어줌 -->
<jsp:useBean id="bag" class="multi.ProductVO"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/>

    
    <%
//     String id=request.getParameter("id");
//     String name=request.getParameter("name");
//     String content=request.getParameter("content");
//     String price=request.getParameter("price");
//     int price2=Integer.parseInt(price);
//     String company=request.getParameter("company");
//     String img=request.getParameter("img");
    
//     ProductVO bag=new ProductVO();
//     bag.setId(id);
//     bag.setName(name);
//     bag.setContent(content);
//     bag.setPrice(price2);
//     bag.setCompany(company);
//     bag.setImg(img);
    
    ProductDAO dao=new ProductDAO();
    dao.insert(bag);
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background:gray;
}
</style>
</head>
<body>
상품 추가 요청됨
<hr color="red">
<img src="image/<%=bag.getImg()%>" width=200 height=200><br>
올린 상품 아이디: <%=bag.getId()%><br>
올린 상품 이름: <%=bag.getName()%><br>
올린 상품 내용: <%=bag.getContent()%><br>
올린 상품 가격: <%=bag.getPrice()%><br>
올린 상품 회사: <%=bag.getCompany()%><br>
<%-- 올린 상품 이미지: <%=img%><br> --%>

</body>
</html>