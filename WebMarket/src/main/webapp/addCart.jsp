<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> addCart.jsp 파일 </title>
</head>
<body>
  <%
     String id = request.getParameter("id"); // P1234
     
     if( id == null || id.trim().equals("") ) {
    	 response.sendRedirect("products.jsp");
     }
  
     ProductRepository dao = ProductRepository.getInstance();
     
     Product p = dao.getProductById( id ); //P1234의 다른 자료들이 있는 주소를 찾음
     
     ArrayList<Product> goodsList = dao.getAllProducts();
     
     Product goods = new Product();
     
     for( int i=0; i< goodsList.size(); i++ ){
    	 goods = goodsList.get(i);
    	 if( goods.getProductId().equals(id) ) {
    		 break; 
    	 }
     }
     // 섹션을 가져오기 현재 섹션이 없는 상태이면 null이 들어간다. 섹션 있으면 섹션의 값을 넣어준다.  
     ArrayList<Product> list =( ArrayList<Product> ) session.getAttribute("cartlist");
 
     if (list == null ) {
    	 list = new ArrayList<Product>();
    	 session.setAttribute("cartlist", list);
     }
    
     int cnt = 0;
     Product goodsQnt = new Product();
     for( int i=0; i< list.size(); i++){
    	 goodsQnt = list.get(i);
    	 if( goodsQnt.getProductId().equals(id)) {
    		 cnt++;
    		 int orderQuantity = goods.getQuantity() + 1;//장바구니에 담은 갯수 + 1
    		 goodsQnt.setQuantity(orderQuantity);
    	 }
     }
     if (cnt==0) {
    	 goods.setQuantity(1);
    	 list.add(goods);
     }
     
     response.sendRedirect("product.jsp?id=" + id);
  %>
</body>
</html>