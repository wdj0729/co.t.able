<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="./header.jsp" %>
<head>
</head>
<body>
  <!--메인 화면 내용-->
  <br><br><br><br><br><br><br><br>
    <form action="EmailSendingServlet" method="post">
        <table border="0" width="50%" align="center">
        <h2 style="text-align:center;">문의하기</h2>
            <tr>
                <td><input type="hidden" name="recipient" size="60" value="<!--구글 이메일 주소-->"/></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>보내는 이 </td>
                <td><input type="text" placeholder="이메일 주소를 입력하세요." name="subject" size="60" required/></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>문의 내용 </td>
                <td><textarea rows="10" cols="62" placeholder = "문의할 내용을 입력하세요." name="content" required></textarea> </td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="보내기"/></td>
            </tr>
        </table><br>
    </form>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="http://localhost:8081/haha/js/bootstrap.min.js"></script>
  </body>
</html>
<%@ include file="./footer.jsp" %>
