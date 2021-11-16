<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> <!-- sql문을 사용하기 위해 import -->
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/cotable_db";
String id = "root";
String pass = "1234";

int total = 0;

try {
	Connection conn = DriverManager.getConnection(url,id,pass); //db 연결
	Statement stmt = conn.createStatement();//statement 타입의 객체 생성

	String sqlCount = "SELECT COUNT(*) FROM cotable_tbl"; //db내의 자료개수를 찾는 sql문
	ResultSet rs = stmt.executeQuery(sqlCount); //db 실행
	
	if(rs.next()){ //찾는 결과가 있으면 true
		total = rs.getInt(1); //select문의 첫번째 필드 count*
	}
	rs.close();
	
	String sqlList = "SELECT NUM, NAME, GENDER, PHONENUMBER, EMAILADDRESS, SCHOOLINFO from cotable_tbl order by NUM DESC";
	rs = stmt.executeQuery(sqlList); //db 실행

%>
<center>
<h2>입주 신청자 목록 보기</h2>
<table style="border:1px solid black; width=80%; height:40px; margin:auto; text-align:center;">
<tr>
<td style="border:1px solid black; background-color:#D8D8D8;" width="80">글번호</td>
<td style="border:1px solid black; background-color:#D8D8D8;" width="80">작성자</td>
<td style="border:1px solid black; background-color:#D8D8D8;" width="60">성별</td>
<td style="border:1px solid black; background-color:#D8D8D8;" width="180">핸드폰번호</td>
<td style="border:1px solid black; background-color:#D8D8D8;" width="180">이메일주소</td>
<td style="border:1px solid black; background-color:#D8D8D8;" width="120">소속학교</td>
</tr>
<%
	if(total==0) {//자료가 없을때
%>
	 		<tr align="center" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  </tr>
<%
	 	} else {//자료가 있을때
	 		
		while(rs.next()) { 
			int idx = rs.getInt(1); //index number
			String name = rs.getString(2); //name
			String gender = rs.getString(3); //gender
			String phonenumber = rs.getString(4); //phonenumber
			String emailaddress = rs.getString(5); //email address
			String schoolinfo = rs.getString(6); //schoolinfo
		
%>
<tr>
	<td style="border:1px solid black;" width="70"><%=idx %></td>
	<td style="border:1px solid black;" width="70"><a href="board-read.jsp?idx=<%=idx%>"><%=name %></a></td>
	<td style="border:1px solid black;" width="40"><%=gender %></td>
	<td style="border:1px solid black;" width="120"><%=phonenumber %></td>
	<td style="border:1px solid black;" width="180"><%=emailaddress %></td>
	<td style="border:1px solid black;" width="80"><%=schoolinfo %></td>
</tr>
<% 
		}
	} 
	rs.close(); //rs객체 반환
	stmt.close(); //stmt객체 반환
	conn.close(); //conn객체 반환
} catch(SQLException e) {
	out.println( e.toString() ); //에러 날 경우 에러 출력
}
%>
</table>
<br>
</center>
</body>
</html>
