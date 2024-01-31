<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> processAddProduct.jsp 상품등록 페이지</title>
</head>
<body>
  <%
      request.setCharacterEncoding("utf-8");
  
     
      String fileName = "";
      String realFolder = "D:\\ai\\study\\jsp_study\\WebMarket\\src\\main\\webapp\\images";
          
      int maxSize = 5*1024*1024; // 파일의 크기 5MB
      String encType="utf-8";
      
      MultipartRequest multi = new MultipartRequest( request, realFolder, maxSize,  encType, new DefaultFileRenamePolicy() );
            
      String productId = multi.getParameter("productId");
      String name = multi.getParameter("name");
      String unitPrice = multi.getParameter("unitPrice");
      String description = multi.getParameter("description");
      String manufacturer = multi.getParameter("manufacturer");
      String category = multi.getParameter("category");
      String unitsInStock = multi.getParameter("unitsInStock");
      String condition = multi.getParameter("condition");
      
      // "1,500,000" --> 1,500,000
      Integer price;
      
      if ( unitPrice.isEmpty() )
    	   price=0;
      else
    	  price =  Integer.valueOf(unitPrice);
      
      // "1000"  ---> 1000 
      Integer units;
      
      if ( unitsInStock.isEmpty() )
    	  units = 0;
      else 
    	  units = Integer.valueOf(unitsInStock);
      
      // 업로드할 파일들을 전부 가져오기 
      Enumeration<String>  files =  multi.getFileNames();
      String fname = files.nextElement();
      String fileName1 = multi.getFilesystemName(fname);
       
      // 자바안에 자료 넣기 
      ProductRepository dao = ProductRepository.getInstance(); // ProductRepository 주소 얻기
      
      Product newProduct = new Product();
      newProduct.setProductId(productId);
      newProduct.setPname(name);
      newProduct.setUnitPrice(price);
      newProduct.setDescription(description);
      newProduct.setManufacturer(manufacturer);
      newProduct.setCategory(category);
      newProduct.setUnitsInStock(units);
      newProduct.setCondition(condition);
      
      newProduct.setFilename(fileName1);
      
      dao.addProduct(newProduct); //전체 리스트에 추가하기
      
      response.sendRedirect("products.jsp"); // 강제로 products.jsp 보내서 응답
      
      
      
      
      
  %>
</body>
</html>