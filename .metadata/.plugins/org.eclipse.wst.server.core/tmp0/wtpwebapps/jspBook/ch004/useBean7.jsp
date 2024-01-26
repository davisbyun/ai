<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> person  </title>
</head>
<body>

<h1> person 자바 자료 입력하고 출력하기 </h1>

<%--결과화면 이름 나이 주소 --%>
<%--결과화면 이수진 25 서울 --%>
<%--결과화면 정수진 27 인천 --%>

<jsp:useBean id="p1" class="jspBook.Person" scope="page"></jsp:useBean>

<jsp:setProperty property="name" name="p1" value="이수진" />
<jsp:setProperty property="age" name="p1" value="25" />
<jsp:setProperty property="addr" name="p1" value="서울" />

<jsp:getProperty property="name" name="p1"/>
<jsp:getProperty property="age" name="p1"  />
<jsp:getProperty property="addr" name="p1" />  




<%--
<%
p1.setName("이수진");
p1.setAge(25);
p1.setAddr("서울");
%>

<p> 이름 : <%= p1.getName() %>
<p> 나이 : <%= p1.getAge() %>
<p> 주소 : <%= p1.getAddr() %>

<%
p1.setName("정수진");
p1.setAge(27);
p1.setAddr("인천");
%>

<p> 이름 : <%= p1.getName() %>
<p> 나이 : <%= p1.getAge() %>
<p> 주소 : <%= p1.getAddr() %>
 --%>
 
</body>
</html>