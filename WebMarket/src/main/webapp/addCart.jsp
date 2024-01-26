<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
  String id = request.getParameter("id");
  
  if(id == null || id.trim().equals("")) {
	  response.sendRedirect("products.jsp");	  
  }
  
  ProductRepository dao = ProductRepository.getInstance();
  Product p  = dao.getProductById(id);
  
  ArrayList<Product> goodsList = dao.getAllProducts();
  Product goods = new Product();
  for(int i =0; i< goodsList.size(); i++ ) {
	  goods = goodsList.get(i);
	  if(goods.getProductId().equals(id)) {
		  break;
	  }
  } 
   //세션을 가져오기(현재 세션이 없는 상태이면 null 이 들어간다. 
   ArrayList<Product> list = ( ArrayList<Product> ) session.getAttribute("cartlist");
   if (list == null ) {
	   list = new ArrayList<Product>();   //session 을 만듬
	   session.setAttribute("cartlist", list);
   }
   
    int cnt = 0;
    Product goodsQnt = new Product();
    for(int i = 0 ; i< list.size(); i++) {
    	goodsQnt = list.get(i);
    	if(goodsQnt.getProductId().equals(id)) {
    		cnt++;
    		int orderQuantity = goods.getQuantity() +1 ;
    		goodsQnt.setQuantity(orderQuantity);
    	}
    	
    }
   
    if (cnt == 0 ){
    	goods.setQuantity(1);
    	list.add(goods);
    	
    }
  
    response.sendRedirect("product.jsp?id=" + id);
    
  %>
</body>
</html>