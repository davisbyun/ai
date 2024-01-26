<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processAddProduct.jsp 상품등록 페이지 </title>
</head>
<body>
  <%
   request.setCharacterEncoding("utf-8");
   
   String fileName = " " ;
   String realFolder = "D:\\ai\\study\\jsp_study\\WebMarket\\src\\main\\webapp\\images" ;
  /*
  프로그램에서 경로를 표시할 때는 "\\" 경로 표시하거나
  "/"를 사용해야 함
  
  */ 
   
   
   int maxSize = 5*1024*1024;
   String encType="utf-8";
   
   MultipartRequest multi  = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
 
   String productId = multi.getParameter("productId") ;
   String name = multi.getParameter("name") ;
   String unitPrice = multi.getParameter("unitPrice") ;
   String description = multi.getParameter("description") ;
   String manufacturer = multi.getParameter("manufacturer") ;
   String category = multi.getParameter("category") ;
   String unitsInStock = multi.getParameter("unitsInStock") ;
   String condition = multi.getParameter("condition") ;
  
  //금액 정수화 "1500000" --> 1500000으로 변경
  Integer price;
  if(unitPrice.isEmpty() )
	  price=0;
  else 
	  price= Integer.valueOf(unitPrice);
  
  //재고 정수화 "1000" --> 1000로 변경(정수)
  Integer units;
  if(unitsInStock.isEmpty())
	  units=0;
  else
	  units= Integer.valueOf(unitsInStock);
  
  //업로드할 파일들을 전부 가져오기
  Enumeration<String> files = multi.getFileNames();
  String fname = files.nextElement();
  String fileName1 = multi.getFilesystemName(fname);
  
  
  
  
  //자바 안에 자료 넣기
  //입력폼 ---> 서버보냄(processAddProduct.jsp)--->자바 보냄 ---------> jsp 화면
  //       addProduct        processAddProduct                           
  ProductRepository dao = ProductRepository.getInstance();  //ProductRepository의 주소를 받음
  
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
  
    dao.addProduct(newProduct); 
  	response.sendRedirect("products.jsp");
  
    
  
 %>
  
  
</body>
</html>