<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>se01Result.jsp</h1>
   <%
   		//폼에서 넣어준 자료를 서버로 가져오기
   		String id = request.getParameter("id");
   		String pwd = request.getParameter("pwd");
   		
   		if(id.equals("admin") && (pwd.equals("1234")) ) {
   			//세션 생성하기
   			session.setAttribute("sesId", id);   //  session.setAttribute("세션명", 세션값);
   			session.setAttribute("sesPwd", pwd);
   			out.println("로그인에 성공했습니다. 세션을 만들었습니다.");
   			out.println(id + " 님 방문 환영합니다.");
   	    }else{
   	    	out.println("로그인에 실패했습니다. 다시 로그인하세요");
   	    	response.sendRedirect("se01.jsp");
   	    }
   %>
   
   
</body>
</html>