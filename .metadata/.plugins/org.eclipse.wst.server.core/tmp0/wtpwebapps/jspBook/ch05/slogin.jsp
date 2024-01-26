<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h3> slogin.jsp 파일입니다 </h3>
	<%
	String name = request.getParameter("name");
	String phone= request.getParameter("phone");
	String age = request.getParameter("age");
	 %>


<jsp:useBean id="slogin" class="jspBook.slogin"></jsp:useBean>
	<%
	slogin.setName(name);
	slogin.setPhone(phone);
	slogin.setAge(age);
	%>

<jsp:setProperty property="name" name="slogin"/>
<jsp:setProperty property="phone" name="slogin"/>
<jsp:setProperty property="age" name="slogin"/>
	 	 
	<%
	String sn = slogin.getName();
	String sp = slogin.getPhone();
	String ae = slogin.getAge();
	%>

<jsp:getProperty property="name" name="slogin"/>	
<jsp:getProperty property="phone" name="slogin"/>
<jsp:getProperty property="age" name="slogin"/>
		 	 
</body>
</html>