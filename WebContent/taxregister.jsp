<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles.css" type="text/css" />
<title>TAX REGISTER</title>
<script type="text/javascript">
function newwindow()
{
	window.open('taxprint.jsp','PRINT','width=500,height=500');
	return true;
}
</script>
</head>
<body>
<div class="back">
<h1>FINANCIAL MANAGEMENT</h1>

<div id="tabs">
  <ul>
   <li><a href="index.jsp"><span>HOME</span></a></li>
    <li><a href="about.jsp"><span>ABOUT</span></a></li>
    <li><a href="employee.jsp"><span>EMPLOYEES</span></a></li>
    <li><a href="funds.jsp"><span>FUNDS</span></a></li>
    <li><a href="taxes.jsp"><span>TAXES</span></a></li>
    <li><a href="others.jsp"><span>MISC</span></a></li>
   </ul>
</div>
</div>
<br><br>
<%
  			Connection con=null;
 			 Statement st=null;
  			ResultSet rs=null;
 
			
			Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?"+"user=root&password=12345");
    %>
			<div class="CSSTableGenerator" >
			<table align="center">
			 <tr>
			 <th></th>
			 <th></th>
			 <th></th>
			 <th></th>
			 <th></th>
			<th></th>
			</tr>
			
			
			<% 
			try
				{
					st = con.createStatement();
					String sql = "select * from taxes";
					rs=st.executeQuery(sql);
				while(rs.next())
					{
					%>
					<tr>
 					<td>EMP_ID:<%=rs.getString("empid") %></td>
 					<td>EMP_NAME:<%=rs.getString("fname")+rs.getString("lname") %></td>
      				<td>EMP_ADD:<%=rs.getString("address") %></td>
      				<td>EMP_DEPT:<%=rs.getString("dept") %></td>
      				<td>EMP_GRADE:<%=rs.getString("paygrade") %></td>
      				<td>EMP_TAXAMOUNT:<%=rs.getString("taxes") %></td>
      				
      			</tr>
					<% 
					}
				}
				catch(Exception e)
					{
					e.printStackTrace();
					}
			%>
			</table>
			</div>
			 <%
  			Connection con1=null;
 			 Statement st1=null;
  			ResultSet rs1=null;
 
			
			Class.forName("com.mysql.jdbc.Driver");
    		con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?"+"user=root&password=12345");
    %><br><br>
			<div class="CSSTableGenerator" >
			<table align="center">
			 <tr>
			 <th></th>
			 <th></th>
			 <th></th>
			 <th></th>
			 <th></th>
			<th></th>
			</tr>
			
			<% 
			try
				{
					st1 = con1.createStatement();
					String sql1 = "select * from contaxes";
					rs1=st1.executeQuery(sql1);
				while(rs1.next())
					{
					%>
					<tr>
 					<td>CON_ID:<%=rs1.getString("conid") %></td>
 					<td>CON_NAME:<%=rs1.getString("fname")+rs1.getString("lname") %></td>
      				<td>CON_ADD:<%=rs1.getString("address") %></td>
      				<td>CON_DEPT:<%=rs1.getString("dept") %></td>
      				<td>CON_GRADE:<%=rs1.getString("paygrade") %></td>
      				<td>CON_TAXAMOUNT:<%=rs1.getString("taxes") %></td>
      				
      			</tr>
					<% 
					}
				}
				catch(Exception e)
					{
					e.printStackTrace();
					}
			%>
			</table>
			</div><br><br>
			<center><input type="button" onclick="return newwindow()" value="PRINT"></center>
</body>
</html>