<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%
	String d = request.getParameter("dollar");
double won = Math.round(Double.parseDouble(d)*1283*100)/100.0;
	
%><%=won%>