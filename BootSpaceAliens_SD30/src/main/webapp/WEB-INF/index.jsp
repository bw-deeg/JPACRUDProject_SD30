<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
<h1>Aliens</h1>
	<form action="getAlien.do" method="get">
	 <label for="id">Id:</label><br>
		<input type="text" name="id" ><br><br>
		
	 <label for="name">Name:</label><br>
		<input type="text" name="name" ><br><br>
		
  		<input type="submit" value="Submit">
	</form>

	<ul>
		<c:forEach var="sa" items="${spaceAliens }">
			<li><a href="getAlien.do?id=${sa.id}&name=${sa.name}"> ${sa.name }</a></li>
		</c:forEach>
	</ul>
</body>
</html>