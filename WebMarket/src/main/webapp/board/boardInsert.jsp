<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate" %>    
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="UTF-8">
<title>boardInsert.jsp 게시글 작성하기 </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>
<body>

	<%--
	 String writer1 = (String) session.getAttribute("name");
	 if (writer1 == null){
		 response.sendRedirect("boardList.jsp");
	 }
	
	--%>

	<%
	  LocalDate now = LocalDate.now();	
	  String writer = (String) session.getAttribute("name");
	
	%>
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 글쓰기 </h1> 
    </div>
  </div> 
    
  <div class="container">
   <form action="processBoardInsert.jsp"  name="board" class="form-horizontal"  method="post">
          
         <div class="form-group row">
            <label class="col-sm-2 f1"> 글제목 </label>
            <div class="col-sm-4">
                <input type="text" name="title" id="title" placeholder="제목입력"  class="form-control"> 
            </div>
         </div>  
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 글내용 </label>
            <textarea rows = "10" cols="45" name="content" placeholder="글내용" ></textarea>
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
                <input type="text" name="regdate" id="regdate" value="<%= now %>" class="form-control"> 
            </div>
         </div>        
             
         <div class="form-group row">
            <div class="col-sm-offset-2  col-sm-10  col  text-center">
                <input type="submit"  class="btn btn-primary f1" value="글쓰기 저장" > 
               <a href="boardList.jsp" class="btn btn-warning">  게시판으로 </a>
            </div>
         </div>
          
     </form>
   </div>
  
  <jsp:include page="../footer.jsp"/>
  
  </body>
  </html>
  