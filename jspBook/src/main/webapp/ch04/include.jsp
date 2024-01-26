<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 받는 쪽</title>
</head>
<body>
    <h1>요청 받는 곳</h1>
    <jsp:include page="include_data.jsp">
    	<jsp:param value='' name="kor"/>
    	<jsp:param value="100" name="jumsu" />
    </jsp:include>
    <h3>응답해 주기</h3>
</body>
</html>