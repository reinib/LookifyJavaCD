<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="header">
    	<a href="/dashboard">Dashboard</a>  
    </div> 
	<div class="form">
		<h3>
			Title: <c:out value="${song.title}"/><br>
			Artist: <c:out value="${song.artist}"/><br>
			Rating (1-10): <c:out value="${song.rating}"/><br>
			<a href="/languages/delete">delete</a><br>
		</h3>
	</div>
</body>
</html>