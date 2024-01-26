<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>    
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript">
function addToCart() {
	   if( confirm("상품을 장바구니에 추가하시겠습니까?") ) {
		   document.addForm.submit();
	  }else {
		   document.addForm.reset();
	  }
}	   
</script>

</head>
<body>

  <jsp:include page="menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 상품 정보 </h1> 
    </div>
    </div>
  
  <jsp:useBean id="pr" class="dao.ProductRepository" ></jsp:useBean>
	  <%
	  //상품아이디받기
	  String prodId = request.getParameter("id");
	  
	  ProductRepository dao = ProductRepository.getInstance(); //7장에서 새로추가
	  //자바로 상품아이디에 해당하는 객체의 주소를 찾아온다. 
	  Product p = dao.getProductById(prodId); 
	  %>
	<div class="container">
  	<div class="row" >
  	<div class=col-md-5>
  		<img src="${pageContext.request.contextPath}/images/<%=p.getFilename() %>" style="width:100%">
  	</div>
   	<div class="col-md-6">
  		
  		<h3><%=p.getPname() %></h3>
  		<p><%=p.getDescription() %></p>
  		<p><b>상품코드 :</b><span class="badge badge-danger"><%=p.getProductId() %></span> 
  		<p><b>제조사 : </b><span class="badge badge-primary"><%=p.getManufacturer() %></span>
  		<p><b>분류 : </b><sapn class="badge badbe-pill badge-dark"><%=p.getCategory() %></sapn>
  		<p><b>재고수: </b><span class="badge badge-pill badge-danger"><%=p.getUnitsInStock() %></span>
  		<h4><%=p.getUnitPrice() %> 원</h4>
  		<%--장바구니 버튼을 누르면 상품코드 정보를 가지고 장바구니.jsp로 이동 폼태그 활용 --%>
  		<form name="addForm" action="./addCart.jsp?id=<%=p.getProductId() %>" method="post">
 	  		<p><a href="#" class="btn btn-info" onclick="addToCart()"> 상품주문 &raquo;</a>
	  		   <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo; </a>
	  		<p><a href="./products.jsp" class="btn btn-secondary"> 상품목록 &raquo;</a>
		</form>  		
  	</div>
  	</div>
  	</div>
  		
  		
  		
  		
  		
  	
  
  <jsp:include page="footer.jsp"></jsp:include>



</body>
</html>