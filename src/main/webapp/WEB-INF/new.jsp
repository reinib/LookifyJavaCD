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
        <form:form action="/dashboard" method="post" modelAttribute="song">
        <p>
            <form:label path="title">Title</form:label>
            <form:errors path="title"/>
            <form:input path="title"/>
        </p>
        <p>
            <form:label path="artist">Artist</form:label>
            <form:errors path="artist"/>
            <form:input path="artist"/>
        </p>
        <p>
            <form:label path="rating" class="mr-sm-2" for="inlineFormCustomSelect">Rating</form:label>
            <form:errors path="rating"/>
            <form:select path="rating"  class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                <form:option path="rating" value="1">1</form:option>
                <form:option path="rating" value="2">2</form:option>
                <form:option path="rating" value="3">3</form:option>
                <form:option path="rating" value="4">4</form:option>
                <form:option path="rating" value="5">5</form:option>
                <form:option path="rating" value="6">6</form:option>
                <form:option path="rating" value="7">7</form:option>
                <form:option path="rating" value="8">8</form:option>
                <form:option path="rating" value="9">9</form:option>
                <form:option path="rating" value="10">10</form:option>
              </form:select >
        </p>   
        <input type="submit" value="Add Song"/>
        </form:form> 
    </div>
</body>
</html>