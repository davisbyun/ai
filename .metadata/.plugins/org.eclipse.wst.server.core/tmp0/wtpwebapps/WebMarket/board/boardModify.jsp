<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="UTF-8">
<title>boardModify.jsp 게시글 수정 페이지</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
	<% 
	   request.setCharacterEncoding("utf-8");
	   String num = request.getParameter("num");	
	   String title = request.getParameter("title");
	   String content = request.getParameter("content");
	   String writer = request.getParameter("writer");
	   String regdate = request.getParameter("regdate");
	   String count = request.getParameter("count");
	%>

  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 수정페이지 </h1> 
    </div>
  </div> 
  
  <div class="container">
    <form action="processBoardModify.jsp"  name="board" class="form-horizontal"  method="post">
       <input type="hidden" name="num" id="num" value="<%= num %>" >
         <div class="form-group row">
            <label class="col-sm-2 f1"> 글제목 </label>
            <div class="col-sm-4">
                <input type="text" name="title" id="title" value="<%= title %>" class="form-control"> 
            </div>
         </div>  
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 글내용 </label>
            <textarea rows = "10" cols="45" name="content" ><%= content %></textarea>
            	
         </div>
                 
         <div class="form-group row">
            <label class="col-sm-2 f1"> 작성자 </label>
            <div class="col-sm-4">
                <input type="text" name="writer" id="writer" value="<%= writer %>" class="form-control"> 
         </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-2 f1"> 작성일 </label>
            <div class="col-sm-4">
                <input type="text" name="regdate" id="regdate" value="<%= regdate %>" class="form-control"> 
            </div>
         </div>        
             
         <div class="form-group row">
            <div class="col-sm-offset-2  col-sm-10  col  text-center">
                <input type="submit"  class="btn btn-primary f1" value="글쓰기 수정" > 
               <a href="boardList.jsp" class="btn btn-warning">  게시판으로 </a>
            </div>
         </div>
     </form>
  </div>
  <jsp:include page="../footer.jsp"/>
  
  </body>
  </html>
  