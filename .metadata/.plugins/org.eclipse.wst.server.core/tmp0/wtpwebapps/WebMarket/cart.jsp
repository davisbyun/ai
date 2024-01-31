<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> cart.jsp file 장바구니</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
  <%
      String cartId = session.getId(); // 섹션을 만들때 자동으로 만들지는 고유한 아이디값을 얻기
  %>
  <jsp:include page="menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 장바구니 </h1> 
    </div>
  </div> 
  <div class="container">
    <div class="row">
      <table width="100%">
        <tr>
          <td align="left"><a href="./delete.jsp?cartId=<%= cartId %>" class="btn btn-danger">삭제하기</a></td>
          <td align="right"><a href="./shippingInfo.jsp?cartId=<%= cartId %>"  class="btn btn-success" >주문하기</a></td>  
        </tr>
      </table>
    </div>
    <div style="padding-top: 50px">
       <table class="table table-hover">
          <tr><th>상품</th><th>가격</th><th>수량</th><th>소계</th><th>비고</th></tr> 
          <%
              int sum=0; //총액 
              ArrayList<Product> cartList  =  ( ArrayList<Product> ) session.getAttribute("cartlist");
              
              if(cartList == null){
            	   cartList = new ArrayList<Product>();
              }
              
              for( int i=0; i< cartList.size(); i++ ) {
            	 Product p = cartList.get(i); //장바구니에 처음으로 넣어준 상품 주소를 얻기 
            	 int total = p.getUnitPrice() * p.getQuantity(); //소계 구하기 
            	 sum = sum + total; //총액에다 누적
              
           %>
           <tr>
               <td><%= p.getProductId() %></td>
               <td><%= p.getUnitPrice() %></td>
               <td><%= p.getQuantity() %></td>
               <td><%= total %></td> 
               <td> <a href="./removeCart.jsp?id=<%= p.getProductId() %>"  class="badge badge-danger">삭제</a> </td>
           </tr>
          <%
              } // for문의 끝 
          %>
          <tr>
               <th></th> <th></th>  <th>총합계</th>  <th> <b>  <%= sum %>  </b>  </th> <th></th>
          </tr>
       </table>
       <a href="products.jsp" class="btn btn-primary"> 쇼핑계속하기 </a>
    </div>
    
   </div>
  
  
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>