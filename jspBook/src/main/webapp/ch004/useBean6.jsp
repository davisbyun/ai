<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board 자바 자료 입력하고 출력하기</title>
</head>
<body>
   <jsp:useBean id="bd" class="jspBook.Board" scope="page"></jsp:useBean>
   
   
   
   <%-- 결과화면 1 게시판 제목 게시판 내용 홍길동 --%>
   <%-- 결과화면 2 자바빈즈 자바와 jsp연결 이순신 --%>
   <%
	   bd.setbTitle("자바빈즈"); 
	   bd.setbContent("자바와 jsp연결");
	   bd.setWriter("이순신");
   %>
   
   <p> 이름 : <%= bd.getbTitle() %>
   <p> 제목 : <%= bd.getbContent() %>
   <p> 글쓴이 : <%= bd.getWriter() %>
</body>
</html>


