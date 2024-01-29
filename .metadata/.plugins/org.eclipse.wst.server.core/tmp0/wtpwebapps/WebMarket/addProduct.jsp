<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
  @import url('https://fonts.googleapis.com/css2?family=Hahmlet&display=swap');
  .f1 { font-family: 'Hahmlet', serif; }
</style>

</head>
<body>
   <jsp:include page="menu.jsp"></jsp:include>
   <div class="jumbotron">
    <div class="container">
        <h1 class="display-3 f1"> 상품 등록 </h1> 
    </div>
  </div>
  <div class="container">
    <form action="./processAddProduct.jsp"  name="newProduct" 
          enctype="multipart/form-data" class="form-horizontal"  method="post">
          
         <div class="form-group row">
            <label class="col-sm-2 f1"> 상품코드 </label>
            <div class="col-sm-4">
                <input type="text" name="productId" id="productId"  class="form-control"> 
            </div>
         </div>  
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 상품명 </label>
            <div class="col-sm-4">
                <input type="text" name="name"  id="name"   class="form-control"> 
            </div>
         </div> 
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 가격 </label>
            <div class="col-sm-4">
                <input type="text" name="unitPrice" id="unitPrice" class="form-control"> 
            </div>
         </div> 
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 상세정보 </label>
            <div class="col-sm-4">
                <textarea name="description"  id="description" cols="50" rows="2" class="form-control"></textarea>
            </div>
         </div> 
         
         <div class="form-group row">
            <label class="col-sm-2 f1"> 제조사 </label>
            <div class="col-sm-4">
                <input type="text" name="manufacturer" id="manufacturer" class="form-control"> 
            </div>
         </div> 
         
         <div class="form-group row">
            <label class="col-sm-2 f1"> 분류 </label>
            <div class="col-sm-4">
                <input type="text" name="category" id="category" class="form-control"> 
            </div>
         </div> 
         
         <div class="form-group row">
            <label class="col-sm-2 f1"> 재고수 </label>
            <div class="col-sm-4">
                <input type="text" name="unitsInStock" id="unitsInStock" class="form-control"> 
            </div>
         </div> 
         
         <div class="form-group row">
            <label class="col-sm-2 f1"> 상태 </label>
            <div class="col-sm-4 f1">
                <input type="radio" name="condition" value="New"> 신규 제품
                <input type="radio" name="condition" value="Old"> 중고 제품
                <input type="radio" name="condition" value="Refurbished"> 재생 제품
            </div>
         </div> 
         
         <div class="form-group row">
           <label class="col-sm-2">이미지</label>
           <div class="col-sm-5">
             <input type="file" name="productImage" id="productImage" class="form-control">
           </div>
         </div>
          
         
         <div class="form-group row">
            <div class="col-sm-offset-2  col-sm-10  col  text-center">
                <input type="button"  class="btn btn-primary f1" value="상품등록" onclick="checkAddProd()"> 
                 <input type="reset"  class="btn btn-danger f1" value="다시 입력"> 
            </div>
         </div> 
    
    </form>
   
  </div> 
  <jsp:include page="footer.jsp"></jsp:include>
  
  <script type="text/javascript"  src="./js/validation.js"></script>
</body>
</html>

