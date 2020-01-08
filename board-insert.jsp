<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="./header.jsp" %>
<head>
<script language = "javascript"> // 자바 스크립트 시작

function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.name.value )   //form에 name값이 없을 때
   {
    alert( "이름을 적어주세요" ); //경고창 띄움
    form.name.focus(); //form에 있는 name입력 위치로 이동
    return ;
   }
   
   if( !form.gender.value ) //form에 제목값이 없을떄
   {
    alert( "성별을 적어주세요" ); //경고창 띄움
    form.gender.focus(); //form에 있는 title 입력 위치로 이동
    return ;
   }
   
   if( !form.phonenumber.value ) //form에 비밀번호값이 없을때
   {
    alert( "핸드폰 번호를 적어주세요" ); //경고창 띄움
    form.phonenumber.focus(); //form에 있는 password 입력 위치로 이동
    return ;
   }
   
   if( !form.emailaddress.value ) //form에 email값이 없을 떄
   {
    alert( "이메일 주소를 적어주세요" ); //경고창 띄움
    form.emailaddress.focus(); //form에 있는 emailaddress 입력 위치로 이동
    return ;
   }
 
  if( !form.schoolinfo.value ) //form에 내용값이 없을떄
   {
    alert( "소속 학교를 적어주세요" ); //경고창 띄움
    form.schoolinfo.focus(); //form에 있는 content 입력 위치로 이동
    return ;
   }
 
  form.submit(); //if문 모두 충족시 제출
  }
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="container no-padding">
	<div class="col-md-12 text-center" style="padding:50px 0;">
<center><br><br><br><br><br>
<h2>입주 신청하기</h2>
	</div>
</center>
<form name=writeform method=post action="board-insert-db.jsp">
<table align="center">
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
이 름  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
<input placeholder="이름을 입력하세요." name="name" style="width:180px; height:35px;" >
</td>
</tr>
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
성 별  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input placeholder="성별을 입력하세요." name="gender" style="width:180px; height:35px;">
</td>
</tr>
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
핸드폰번호
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input placeholder="핸드폰 번호를 입력하세요." name="phonenumber" style="width:180px; height:35px;">
</td>
</tr>
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
이메일
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input placeholder="이메일 주소를 입력하세요." name="emailaddress" style="width:180px; height:35px;">
</td>
</tr>
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
소속학교  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input placeholder="소속학교를 입력하세요." name="schoolinfo" style="width:180px; height:35px;">
</td>
</tr>
</table>
<br><table style="width:100%; text-align:center;"><tr>
<td><input type=button value="신청하기" OnClick="javascript:writeCheck();">&nbsp;&nbsp;&nbsp;
<input type=reset value="다시쓰기"></td>
</tr></table>
</form><br>
</div>
</body>
</html>
<%@ include file="./footer.jsp" %>