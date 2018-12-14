<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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
    	<h4>Top Ten Songs</h4><a href="/dashboard">Dashboard</a>  
  		<c:forEach items="${songs}" var="song">
			<p> <c:out value="${song.rating}" /> - <a href="/songs/${song.id}"><c:out value="${song.title}"/></a> - <c:out value="${song.artist}"/> </p>
		</c:forEach>
	</div>
</body>
</html>