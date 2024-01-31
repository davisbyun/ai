<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.net.*" %>
<%@ page import ="dao.ProductRepository" %>
<%@ page import = "dto.Product" %>
<%@ page import = "java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> orderConfirmation.jsp 주문정보페이지 - 영수증 보이기 </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
 <%
    // 1단계 모든 정보 가져오기 
    request.setCharacterEncoding("utf-8");
    
    String cartId = session.getId(); //섹션정보 가져오기
    
    String vCartId=""; 
    String vCartName ="";
    String vCartSD="";
    String vCartCountry="";
    String vCartZip="";
    String vCartAN="";
    
    //쿠키들을 배열에 담아서 가져오기
    Cookie[] c = request.getCookies();
    
    if (c != null ) {
    	for( int i=0; i < c.length ;  i++ ){
    		Cookie t = c[i]; //쿠키배열의 0열에 있는 쿠키를 t변수 담는다 
    		String cn = t.getName();// 쿠키명을 얻는다. ex) "sCartId" 
    		if( cn.equals("sCartId") ) vCartId = URLDecoder.decode( t.getValue(), "utf-8"); 
    		if( cn.equals("sCartName") ) vCartName  = URLDecoder.decode( t.getValue(), "utf-8"); // t.getValue() 홍길동
    		if( cn.equals("sCartSD") ) vCartSD  = URLDecoder.decode( t.getValue(), "utf-8"); // t.getValue() 2024/01/25
    		if( cn.equals("sCartCountry") ) vCartCountry  = URLDecoder.decode( t.getValue(), "utf-8");
    		if( cn.equals("sCartZip") ) vCartZip  = URLDecoder.decode( t.getValue(), "utf-8");
    		if( cn.equals("sCartAN") ) vCartAN  = URLDecoder.decode( t.getValue(), "utf-8");
    	}
     }
  %>
  <%--  2단계 정보 보이기  --%>
  <jsp:include page="menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 주문 정보 </h1> 
    </div>
  </div> 
  <div class="container col-8 alert alert-info  ">
    <div class="text-center">
       <h1> 영수증</h1>
    </div>
    <div class="row justify-content-between">
       <div class="col-4" align="left">
          <strong>배송 주소</strong><br>
                  성명 :<%= vCartName %> <br>
                  우편번호 : <%= vCartZip %> <br>
                  주소 : <%= vCartAN %> <br>
                  (<%= vCartCountry %>)
       </div>
       <div class="col-4" align="right">
            <p> <em> 배송일 </em> <%= vCartSD %>  
       </div>
     </div>
       
     <div>
          <table class="table table-hover">
             <tr> <th class="text-center" >상품명</th>  <th class="text-center">수량</th>
                  <th class="text-center">가격</th>    <th class="text-center">소계</th>  </tr>
                  <%
                     int sum = 0; //총액
                  // addCart.jsp안에서 만든 섹션명을 쓴다. 
                     ArrayList<Product> ct =( ArrayList<Product> ) session.getAttribute("cartlist"); 
                     if( ct == null ) {
                    	 ct = new ArrayList<Product>();
                     }
                     for( int i=0; i < ct.size(); i++) {
                    	   Product p = ct.get(i);
                    	   int total = p.getQuantity() * p.getUnitPrice() ; //소계 = 수량*단가
                    	   sum = sum + total;		   
                   %>
                    <tr>
                       <td  class="text-center"><%= p.getPname() %> </td>
                       <td  class="text-center"><%= p.getQuantity() %> </td>
                       <td  class="text-center"><%= p.getUnitPrice() %> </td>
                       <td  class="text-center"><%= total %> </td>
                    </tr>
                  
                  <%  	 
                     }
                  %>
                  <tr> <td></td>  <td></td> 
                       <td class="text-right text-primary"> 총액 : </td>
                       <td class="text-center text-danger" > <%= sum %>   </td>       
                  </tr>
          </table>
       </div>
       <div class="d-flex justify-content-center" >
          <a href="./shippingInfo.jsp?cartId=<%= cartId %> "  class="btn btn-info m-2" > 배송정보로 </a>
          <a href="thankCusomer.jsp"  class="btn btn-success m-2"> 주문완료 </a>
          <a href="checkOutCancelled.jsp"  class="btn btn-danger m-2" > 주문취소 </a>
       </div>
          
    </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>