<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>vali02.jsp</h1>
  <form name="loginForm" action="proVali02.jsp" , method="post">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="password" name="pwd">
	<p> 이름 : <input type="text" name="irum">
	<p> <input type="button" value="로그인" onclick="loginCheck()">
	</form>
  <script type="text/javascript">
	
	 function loginCheck() {
	  	var form = document.loginForm;
	  	if(form.id.value==""){
	  		alert("아이디를 입력해 주세요");
	  		form.id.focus();
	  		return false;
	  	}else if(form.pwd.value==""){
	  		alert("비밀번호를 입력해 주세요");
	  		form.pwd.focus();
	  		return false;
	  	}else if(form.irum.value==""){
	  		alert("이름을 입력해 주세요")
	  		form.irum.focus();
	  		return false;
	  	}else if(form.id.value.length < 6 || form.id.value.length >12 ) {
	 		alert("이름의 길이는 6~12자 사이어야 합니다.");
	 		form.id.focus();
	  		return false;
	  	}else if(form.id.value.length >= 6 || form.id.value.length <= 12 ){
	  		for(i=0; i<form.id.value.length; i++) {
	  			var ch = form.id.value.charAt(i);
	  			if(!(ch >= 'a' && ch <='z')) {
	  				alert("아이디는 영문 소문자만 입력 가능합니다.");
	  				form.id.foucs();
	  				return false;
	  			}
	  		}

	 	}else if(form.pwd.value.length < 4 ) {
		 	alert("비밀번호는 4글자 이상을 입력해 주세요");
	  		form.pwd.focus();
  			return false;
  			
	 	}
	  	
	  	if(form.pwd.value.length >= 4 ){
	  		for(i=0; i<form.pwd.value.length; i++) {
	  			var ch = form.pwd.value.charAt(i);
	  			if(!(ch >= '0' && ch <='9')) {
	  				alert("비밀번호는 숫자만 입력 가능합니다.");
	  				form.pwd.foucs();
	  				return false;
	  			}
	  		}	
  			
	 	}
	 	
	 	if(!isNaN(form.irum.value.substr(0,1)) ) {//substr(0,1) 0번 인덱스에 1글자 첫글자 뜯어내기, isNaN () 첫글자 숫자이면 flase,  숫자가 아니면  ture
	 		alert("이름의 첫글자는 숫자이면 안된다.") // 1이순신-true  이순신1-false
	 		form.irum.focus();
	  		return false;
	    }
	 form.submit(); 	
	 }
	  	
	</script>

</body>
</html>