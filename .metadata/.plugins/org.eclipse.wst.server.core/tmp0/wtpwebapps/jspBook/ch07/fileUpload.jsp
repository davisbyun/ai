<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <h1> fileUpload.jsp</h1>
 <form method="post" enctype="multipart/form-data" action="process.jsp ">
	 <p>제목 <input type="text" name="title">
	 <p>파일 <input type="file" name="fileName">
	 <p> <input type="submit" value="전송">
 </form>
</body>
</html>