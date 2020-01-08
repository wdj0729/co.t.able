<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/cotable_db";
	String id = "root";
	String pass = "1234";

	String name = request.getParameter("name"); //board-insert.jsp에서 name에 입력한 데이터값
	String gender = request.getParameter("gender"); //board-insert.jsp에서 gender에 입력한 데이터값
	String phonenumber = request.getParameter("phonenumber"); //board-insert.jsp에서 phonenumber에 입력한 데이터값
	String emailaddress = request.getParameter("emailaddress"); //board-insert.jsp에서 emailaddress에 입력한 데이터값
	String schoolinfo = request.getParameter("schoolinfo"); //board-insert.jsp에서 schoolinfo에 입력한 데이터값
		
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		//board_tbl에 NAME, EMAILADDRESS, TITLE, CONTENT, PASSWORD 값을 insert
		String sqlList = "INSERT INTO cotable_tbl(NAME,GENDER,PHONENUMBER,EMAILADDRESS,SCHOOLINFO) VALUES(?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sqlList);
		
		pstmt.setString(1, name); //name
		pstmt.setString(2, gender); //gender
		pstmt.setString(3, phonenumber); //phonenumber
		pstmt.setString(4, emailaddress); //emailaddress
		pstmt.setString(5, schoolinfo); //schoolinfo
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	} 

%>
<html>
<%@ include file="./header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container no-padding">
	<div class="col-md-12 text-center" style="padding:50px 0;">
<center><br><br><br><br><br><br><br><br><br><br><br>
<h2>작성한 글이 등록되었습니다.</h2>
</center>
	</div>
</div><br><br><br><br><br><br><br><br><br>
</body>
</html>
<%@ include file="./footer.jsp" %>