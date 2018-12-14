<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page isErrorPage="true" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
<meta charset="UTF-8">
<title>Lookify</title>
</head>
<body>
    <div>
        <a href="/songs/new">Add New</a> | <a href="search/topTen">Top Songs</a>
        <form action="/search" method="post">
			<input type="text" name="artist" placeholder="artist">
			<input type="submit" value="Search Artists">
		</form> 
    </div>
    <div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">rating</th>
                    <th scope="col">actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${songs}" var="song">
                <tr>
                    <th scope="row"><c:out value="${song.id}"/></th>
                    <td><a href='/songs/<c:out value="${song.id}"/>'><c:out value="${song.title}"/></a></td>
                    <td><c:out value="${song.rating}"/></td>
                    <td><a href="/delete/${song.id}">delete</a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>