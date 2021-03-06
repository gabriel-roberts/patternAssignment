<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd"
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<title>The Book Store - For your Brainy Instants</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
	</head>
	<body>
		<div id="wrap">
			<div id="top">
				<div id="header">
				</div>				
			</div>
			<div id="menu_tab">                                     
              <ul class="menu">  
                <li class="menu1"><a href="booksAdmin.jsp"> Books </a></li>
				<s:if test="%{#session.Customer.getId()> 0}">
					<li class="menu1"><a href="shoppingCart.jsp"> Customers </a></li>
				</s:if>	
				<s:if test="%{#session.Administrator.getId()> 0}">
					<li class="menu1"><a href="customersAdmin.jsp"> Customers </a></li>
					<li class="menu1"><a href="addCustomer.jsp"> Add Customer </a></li>
					<li class="menu1"><a href="addBook.jsp"> Add Book </a></li>
					<li class="menu1"><a href="addAdministrator.jsp"> Add Admin </a></li>
				</s:if>
              </ul>
			</div>
			<s:form action="signOut">	
				<s:submit />			
			</s:form>
			<div id="content">
						<h2>All Customers</h2>
			 
			<table border="1px" cellpadding="8px">
				<tr>
					<th>Name</th>
					<th>Surname</th>
					<th>UserName</th>
					<th>Address</th>					
					<th>Payment Type</th>
					<th>Age</th>
					<th></th>
					<th></th>
				</tr>
				<s:iterator value="customerList">
					<tr>
						<td><s:property value="firstName" /></td>
						<td><s:property value="lastName" /></td>
						<td><s:property value="username" /></td>
						<td><s:property value="address" /></td>
						<td><s:property value="paymentType" /></td>
						<td><s:property value="age" /></td>
						<td><s:url id="editCustomer" action="findCustomer">
								<s:param name="id" value="id"></s:param>
							</s:url>
								<s:a href="%{editCustomer}">Edit</s:a></td>
						<td><s:url id="deleteCustomer" action="deleteCustomer">
								<s:param name="username" value="%{#session.Administrator.username}"/>
								<s:param name="id" value="id"></s:param>
							</s:url>
						<s:a href="%{deleteCustomer}">Delete</s:a></td>
					</tr>
				</s:iterator>
			</table>
			<s:form action = "listCustomersAction"> Show Customers
				<s:submit />
			</s:form>	
			
			<div style="clear: both;"> </div>

		</div>
		<div id="footer">&copy; The Book Store - <a href="index.jsp">Log In</a></div>
	</div>
	<script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
		var pageTracker = _gat._getTracker("UA-4209019-2");
		pageTracker._initData();
		pageTracker._trackPageview();
	</script>
	</body>
</html> 


