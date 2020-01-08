<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>코티에이블</title>
    
    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost:8081/haha/menubar.css" type="text/css">
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="menubar">
   <ul>
     <a href="index.jsp"><img id='logo' src="http://www.ablehouse.kr/images/logo-light.png" width=180 alt="" onclick="clickBtn();" /></a>
     <li><a href="#">회사소개</a>
      <ul>
        <li><a href="#">소개</a></li>
        <li><a href="#">직원채용</a></li>
        <li><a href="#">오시는 길</a></li>
      </ul>
     </li>
     <li><a href="findhouse.jsp">하우스찾기</a></li>
     <li><a href="procedure.jsp">입주안내</a></li>
     <li><a href="FAQ.html">자주 묻는 질문</a></li>
     <li><a href="EmailForm.jsp">문의하기</a>
     <li><a href="board-insert.jsp">입주신청하기</a>
    </ul>
    <hr>
  </div>
</body>
</html>