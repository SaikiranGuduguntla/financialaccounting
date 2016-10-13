<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>INSERTING</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <%
  Connection con=null;
  Statement st=null;
  ResultSet rs=null;
  int i=0,j=0;
  	int conid = Integer.parseInt(request.getParameter("conid"));
  	String fname = request.getParameter("fn");
  	String lname = request.getParameter("ln");
	String address = request.getParameter("address");
	String ph = request.getParameter("ph");
	String paygrade = request.getParameter("paygrade");
	long payamount = Integer.parseInt(request.getParameter("pay"));
	String dept = request.getParameter("dept");
	String dos = request.getParameter("dos");
	String doe = request.getParameter("doe");
	String un=null;  
	String btnName = request.getParameter("btn_name");
	System.out.println("btn name-------------------->>"+btnName);
	double basic = (double)((payamount*25)/(100*12));
	double executive = (double)((payamount*30)/(100*12));
	double conveyance = (double)((payamount*5)/(100*12));
	double hra = (double)((payamount*20)/(100*12));
	double other = (double)((payamount*10)/(100*12));
	double pfyearly = (double)((basic*12*12)/(100));
	double pfmonthly = (double)((basic*12)/(100));
	double travel = (double)((basic*3)/(100));
	double medical = (double)((basic*2)/(100));
	double taxes = (double)((basic*7)/(100));
	Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?"+"user=root&password=12345");
	try
	{
		   int count=0;
		   
		   
		 if(btnName!=null)
		  {
		if(btnName.equals("save"))
		{
		st = con.createStatement();
		String sql = "insert into contractor (conid,fname,lname,address,dept,phone,paygrade,salary,dos,doe)"+ "values('"+conid+"','"+fname+"','"+lname+"','"+address+"','"+dept+"','"+ph+"','"+paygrade+"','"+payamount+"','"+dos+"','"+doe+"')";
		i=st.executeUpdate(sql);
		st = con.createStatement();
		String sql1 = "insert into consalary (conid,name,dept,basic,executive,conveyance,hra,other)"+ "values('"+conid+"','"+fname+"','"+dept+"','"+basic+"','"+executive+"','"+conveyance+"','"+hra+"','"+other+"')";
		i=st.executeUpdate(sql1);
		st = con.createStatement();
		String sql2 = "insert into conpfyear (conid,fname,lname,pfyearly)"+" values('"+conid+"','"+fname+"','"+lname+"','"+pfyearly+"')";
		i=st.executeUpdate(sql2);
		st = con.createStatement();
		String sql3 = "insert into conpfmonth (conid,fname,lname,pfmonthly)"+" values('"+conid+"','"+fname+"','"+lname+"','"+pfmonthly+"')";
		i=st.executeUpdate(sql3);
		st = con.createStatement();
		String sql4 = "insert into conmedivel (conid,fname,lname,travel,medical)"+" values('"+conid+"','"+fname+"','"+lname+"','"+travel+"','"+medical+"')";
		i=st.executeUpdate(sql4);
		st = con.createStatement();
		String sql5 = "insert into contaxes (conid,fname,lname,address,dept,paygrade,taxes)"+" values('"+conid+"','"+fname+"','"+lname+"','"+address+"','"+dept+"','"+paygrade+"','"+taxes+"')";
		i=st.executeUpdate(sql5);
		response.sendRedirect("addcontractor.jsp");
		st = con.createStatement();
		String sql6 = "insert into salary (id,fname,lname,salary)"+" values('"+conid+"','"+fname+"','"+lname+"','"+payamount+"')";
		i=st.executeUpdate(sql6);
		}
		response.sendRedirect("addcontractor.jsp");
	}
	}
	catch(Exception e)
	  {
	  e.printStackTrace();
	  }
	
    %>
    
    
  </body>
</html>