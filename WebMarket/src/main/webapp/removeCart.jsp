<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeCart.jsp 파일입니다.</title>
</head>
<body>
  <%
  String id = request.getParameter("id");
  
  //id 를 리스트에서 찾아서 지움
  ProductRepository dao = ProductRepository.getInstance();
  Product p = dao.getProductById(id);
  
  //session값 가져오기
  ArrayList<Product> cartlist = ( ArrayList<Product> ) session.getAttribute("cartlist");
  	Product goodsQnt = new Product();
  	for(int i =0 ; i<cartlist.size(); i++) {
  		goodsQnt = cartlist.get(i);
  		if(goodsQnt.getProductId().equals(id)) {  
  			//goodsQnt.getProductId() -장바구니에 들어있는 아이디, equals(id) 는 삭제를 위해 넘겨준 아이디
  		cartlist.remove(goodsQnt); // 장바구니에서 삭제하기	
  		}
  		
  	}
    response.sendRedirect("cart.jsp");
    
  %>
</body>
</html>