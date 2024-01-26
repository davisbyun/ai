<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h1>Hello JSP </h1>
	<h2>Scripting Tag</h2>
	<%! int count = 3;
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	%>
	<%
		for(int i=1; i<=count ; i++){
			out.println(i + "<br>");
		}
	%>
	<%= makeItLower("Hi!") %>
	
	<%! int count1 = 0; // 자바주석 변수선언%>
	<% out.println(++count1); %>
	<% String name = "홍길동";
		out.println(name);
	%>
	<%= name %>
	<%= count1 %>
	<%!
		int sum(int a, int b) {
		return a+b ; }; 
	%>	
	<%
		
		int aa = sum(10,20);
		out.println(aa);
	%>
	<%= aa %>
	<br>
	<%
		int a = 2;
		int b = 3;
		int sum = a+b;
		out.println("2+3 =  " +sum);
	%>
	<br>
	
	<%
	
		for(int i = 0; i <= 10; i++) {
			if(i % 2 == 0)
				out.println(i + "<br>");
			}
	%>
	<br>
	<%! int ga = 10; %>
	<% out.println(ga); %>
	<% int la = 100; 
		out.println(ga +la); // ga변수 가 ;la변수 가
	%>
	<br>
	<%
		out.println(ga +la);
	%>
	<%-- --%> 
	
</body>
<br>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>

</html>