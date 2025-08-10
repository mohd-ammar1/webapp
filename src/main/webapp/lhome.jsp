<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%
    int fid =0;
    String url = "jdbc:mysql://localhost:3306/web_db";
	String dbusername = "root";
	String dbpassword = "Lucifer"; 
	String id = request.getParameter("id");
	if(id!= null && !id.isEmpty()){
		 fid = Integer.parseInt(id);
	%>
    <%
    
    	try{
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection con = DriverManager.getConnection(url,dbusername,dbpassword);
    		PreparedStatement ps = con.prepareStatement("select * from credential where id = ?");
    		ps.setInt(1,fid);
    		
    	}catch(Exception e){
    		%>
    		<script> alert("error while fetching data")</script>
    	<%
    	}
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="3" align="center" style="width:100%">
    <tr>
        <th colspan="2">
            <%@ include file="header.jsp" %>
        </th>
    </tr>
    <tr>
        <th style="width:25%; vertical-align: top;">
            <%@ include file="left.jsp" %>
        </th>
<th>
</th>
</body>
</html>