function checkAddProd() {
   
   //요구사항 
   // 1. 상품 아이디 체크 - 상품코드와 숫자를 조합하여 5~12자까지 입력 반드시 첫글자는 P로 시작하기
   // 2. 상품명 체크하기 - 최소 4자에서 12자까지 입력하기
   // 3. 상품 가격 체크하기  - 숫자만 입력하기
   // 4. 상품 가격 체크하기 - 음수는 입력 안됨
   // 5. 재고수 체크하기 - 숫자만 입력하기 
   
   // 처리순서 : 1단계 폼에 입력한 내용을 가지고 온다.  2단계 조건문으로 검사를 한다. 3단계 2단계 모두 통과되면 전송한다. 
    // 1단계 폼에 입력한 내용을 가지고 온다.
      var  productId = document.getElementById("productId");
      var  name = document.getElementById("name");
      var  unitPrice = document.getElementById("unitPrice");   
      var  unitsInStock = document.getElementById("unitsInStock");   
    // 2단계 조건문으로 검사를 한다.
      // 1. 상품 아이디 체크 - 상품코드와 숫자를 조합하여 5~12자까지 입력 반드시 첫글자는 P로 시작하기 
      /*
      if (   check( 정규표현식, 변수명, 표시할메시지 )     ) {
           productId.focus();
           return false;
       }
      
       function check( var 정규표현식, var 변수명, var 표시할메시지    ) {
             정규표현식 처리
             alert(표시할메시지);
             return false;   
        }
       */
       // 1. 요구사항
       if( ! check( /^P[0-9]{4,11}$/, productId, "상품코드와 숫자를 조합하여 5~12자까지 입력 반드시 첫글자는 P로 시작하기") ) {
            return false;
       }
       
       // 2. 상품명 체크하기 - 최소 4자에서 12자까지 입력하기 
       if( ! check( /^[0-9a-zA-z]{4,12}$/  , name  , "최소 4자에서 12자까지 입력하기") ){
              return false;
      }
      
      // 3. 상품 가격 체크하기  - 숫자만 입력하기
       if( ! check( /^[0-9]*$/  , unitPrice  , "숫자만 입력하기") ){
              return false;
        }
       
       // 4. 상품 가격 체크하기 - 음수는 입력 안됨
       if ( unitPrice.value < 0) {
            alert("음수는 입력 안됨");
            return false;
        }
        
        // 5. 재고수 체크하기 - 숫자만 입력하기 
        if( ! check( /^[0-9]*$/  , unitsInStock  , "숫자만 입력하기") ){
              return false;
        }
        
       
       function check(  regExp,  e,  meg  ) {
          if( regExp.test( e.value ) ) {
                return true;
          }
            alert( meg );
            productId.focus();
            return false;
       }
    
    
    
    
    // 3단계 2단계 모두 통과되면 전송한다.
        document.newProduct.submit(); // newProduct는 <form> 태그의 name
}