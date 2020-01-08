<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="./header.jsp" %>
  <head>
  </head>
  <body>
    
  <!--메인 화면 내용-->
  <br><br><br><br><br><br>
  <div class="w3-content w3-display-container">
  <center>
      <img class="mySlides" src="http://www.ablehouse.kr/images/img_publicity1.png" style="width:80%">
      <img class="mySlides" src="http://www.ablehouse.kr/images/img_publicity2.png" style="width:80%">
      <img class="mySlides" src="http://www.ablehouse.kr/images/img_publicity3.png" style="width:80%">
  </center>
  </div>
  <script>
  //이미지 슬라이드
  var slideIndex = 0;
  carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1}
    x[slideIndex-1].style.display = "block";
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
  </script>
        <!--부트스트랩 스타일 사용-->
             <div class="container no-padding">
                      <div class="col-md-12 text-center" style="padding:50px 0;">
                          <h1><b>ABLE HOUSE</b></h1>
                          <h5>대학생들이 한 집에서 생활하며 일상을 공유하고</h5>
                         <h5>캠퍼스 지역과 함께 성장하는 커뮤니티 셰어하우스입니다.</h5>
                      </div>
              </div>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="http://localhost:8081/haha/js/bootstrap.min.js"></script>
  </body>
</html>
<%@ include file="./footer.jsp" %>
