<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="CounterStyle.css" rel="stylesheet" type="text/css">
	<meta charset="UTF-8">
	<title>Counter Page</title>
</head>
<body>
	<% 
	Integer i = (Integer)session.getAttribute("count");
	if(i == null){
		i = 0;
	}
	else {
		i ++;
	}
	session.setAttribute("count", i);
	
	%>

	
	<form action="Counter" method="get">
		<input type="submit" value="Click Me!"></input> 
	</form>

	<h1>You have clicked this button <%= i %> times!</h1>

</body>
</html>