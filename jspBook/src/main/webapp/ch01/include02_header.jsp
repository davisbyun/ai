<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 연습 2</title>
</head>
<body>
	<%!
	
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
	%>
	<% addCount(); %>
	<p> 이 사이트 방문은 <%= pageCount %> 번째 입니다. </p>
</body>
</html>