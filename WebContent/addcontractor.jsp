<%@ page language="java" import="java.io.*,java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>ADD CONTRACTOR</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
     
     

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<title>CONTRACTOR PAGE</title>
<script type="text/javascript">
	
	function validation(x)
	{
		var i=document.addcon.conid.value;
		var a=document.addcon.fn.value;
		var b=document.addcon.ln.value;
		var c=document.addcon.address.value;
		var d=document.addcon.ph.value;
		var e=document.addcon.dept.value;
		var f=document.addcon.pay.value;
		var g=document.addcon.dos.value;
		var h=document.addcon.doe.value;
		
		if(a=="" || a==null)
		{
			alert("Enter Contractor's First Name");
			document.addcon.fn.focus();
			
		}
		else if(i=="" || i==null)
			{
			alert("Enter Contractor's ID");
			document.addcon.conid.focus();
			}
		else if(b=="" || b==null)
		{
			alert("Enter Contractor's Last Name");
			document.addcon.ln.focus();
		}
		else if(c=="" || c==null)
		{
			alert("Enter Address");
			document.addcon.address.focus();
		}
		
		else if(d=="" || d==null)
		{
			alert("Enter Phone Number");
			document.addcon.ph.focus();
		}
		
		else if(e=="" || e==null)
		{
			alert("Enter Department");
			document.addcon.dept.focus();
		}
		
		else if(f=="" || f==null)
		{
			alert("Enter Pay Amount");
			document.addcon.pay.focus();
		}
		else if(g=="" || g==null)
			{
			alert("Enter Date of Start");
			document.addcon.dos.focus();
			}
		else if(h=="" || h==null)
			{
			alert("enter Date of End");
			document.addcon.doe.focus();
			}
		else
		{
		document.addcon.action = "insertcon.jsp?btn_name="+x;
			addcon.submit();
		}
		
		
		
	}
	
	 </script>
	
  </head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">FINANCIAL MANAGEMENT</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="features.jsp">Features</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>
         
        </div>
      </div>
    </nav>

    <div class="container-fluid">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="home.jsp">Home <span class="sr-only">(current)</span></a></li>
            <li><a href="about.jsp">About</a></li>
            <li class="active"><a href="employee.jsp">Employees</a></li>
            <li><a href="funds.jsp">Funds</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="taxes.jsp">Taxes</a></li>
            <li><a href="pfyearly.jsp">PF(Yearly)</a></li>
            <li><a href="pfmonthly.jsp">PF(Monthly)</a></li>
            <li><a href="medivel.jsp">Travel & Medical</a></li>
          </ul>
        </div>
        
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">ADD CONTRACTOR</h1>
    
   
  

			 <div class="table">
			<table class="table table-striped">
			<thead>
			  <form name="addcon" action="insertcon.jsp" method="post">
   <table align="center">
   <tr>
		<td>Contractor ID</td>
		<td><input type="text" name="conid" maxlength="15" value=""></td>
	</tr>
   <tr>
		<td>First Name</td>
		<td><input type="text" name="fn" maxlength="15" value=""></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="ln" maxlength="15" value=""></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><textarea name="address" rows="5"></textarea></td>
	</tr>
	<tr>
		<td>Phone</td>
		<td><input type="text" name="ph" maxlength="10" value=""></td>
	</tr>
	<tr>
		<td>Department</td>
		<td><input type="text" name="dept" maxlength="10" value=""></td>
	</tr>
	<tr>
		<td>Pay Grade</td>
		<td><input type="text" name="paygrade" maxlength="6" value=""></td>
	</tr>
	<tr>
		<td>Pay Amount</td>
		<td><input type="text" name="pay" maxlength="6" value=""></td>
	</tr>
	<tr>
		<td>Date of Start</td>
		<td><input type="date" name="dos" value=""></td>
	</tr>
	<tr>
		<td>Date of End</td>
		<td><input type="date" name="doe" value=""></td>
	</tr>
	
	</table>
	<br/><br/><table align="center">
	<tr>
			<td><input type="button" value="SAVE" name="save" onclick="validation('save')"></td>
			<td><input type="reset" value="CLEAR"></td>
	</tr>
		</table>
		
   </form>
   </thead>
   </table>
   </div>
   </div>
   </div>
   
			 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
			
			
</body>
</html>