<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
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
int idx = Integer.parseInt(request.getParameter("idx")); //primary key인 idx(num)을 읽어옴

try {
	Connection conn = DriverManager.getConnection(url,id,pass);
	Statement stmt = conn.createStatement();
		
	String sql = "SELECT NAME, GENDER, PHONENUMBER, EMAILADDRESS, SCHOOLINFO from cotable_tbl WHERE NUM="+idx;
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next())
	{
		String name = rs.getString(1); //name
		String gender = rs.getString(2); //gender
		String phonenumber = rs.getString(3); //phonenumber
		String emailaddress = rs.getString(4); //email address
		String schoolinfo = rs.getString(5); //schoolinfo
%>
<center>
<h2>입주 신청자 정보</h2>
</center>
<div style="padding-left:150px">
<table align="center" style="width:60%">
<tr>
	<td width="120"> 
	이 름 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%=name %></td>
</tr>
<tr>
	<td width="120" align="left"> 
	성 별 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%=gender %></td>
</tr>
<tr>
	<td width="160"> 
	핸 드 폰 번 호 
&nbsp;&nbsp;&nbsp;
<%=phonenumber %></td>
</tr>
<tr>
	<td width="160" align="left"> 
	이 메 일
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%=emailaddress %>
</td>
</tr>
<tr>
	<td width="145" align="left"> 
	소 속 학 교
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%=schoolinfo %></td>
</tr>
</table>
</div>
<% 
	}
	rs.close();
	stmt.close();
	conn.close();
} 	catch(SQLException e) {
	out.println( e.toString() );
	}
%>
<br><br><br>
<div align="right" style="padding-right:350px">
<a href="board-list.jsp">게시글 목록 보기</a>
</div>
</body>
</html>