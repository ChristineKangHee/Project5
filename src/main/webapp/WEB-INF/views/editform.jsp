<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page import="com.example.dao.BoardDAO" %>
<%@ page import="com.example.bean.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form:form commandName="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
		<tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
		<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
		<tr><td colspan="2"><input type="submit" value="Edit Post"/>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history">
</form:form>

</body>
</html>