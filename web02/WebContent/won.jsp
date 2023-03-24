<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%
	String m = request.getParameter("won");
double dollar = Math.round(Double.parseDouble(m)/1283*100)/100.0;

%><%=dollar%>