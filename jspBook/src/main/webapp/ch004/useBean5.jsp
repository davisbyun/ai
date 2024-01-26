<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <jsp:useBean id="mb" class="jspBook.MemBean" scope="page"></jsp:useBean>
   
   <jsp:setProperty property="id" name="mb" value="20001213" />
   <jsp:setProperty property="name" name="mb" value="최수연"/>
   
   <jsp:setProperty property="id" name="mb" /> <%--mb.getId()와 동일함 --%>
   <jsp:setProperty property="name" name="mb" /> <%--mb.getNmae()과 동일함 --%>
      
   
</body>
</html>