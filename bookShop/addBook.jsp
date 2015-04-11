<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd"
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<title>The Book Store - For your Brainy Instants</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
	<head>
		<s:head theme="ajax" debug="true"/>
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
			<div id="content">
				<div id="menu_tab">                                     
				  <ul class="menu">                                                                               
					<li class="menu1"><a href="customersAdmin.jsp"> Customers </a></li>
					<li class="menu1"><a href="booksAdmin.jsp"> Books </a></li>
					<li class="menu1"><a href="addCustomer.jsp"> Add Customer </a></li>
					<li class="menu1"><a href="addBook.jsp"> Add Book </a></li>
					<li class="menu1"><a href="addAdministrator.jsp"> Add Admin </a></li>
				  </ul>
			</div>
			<s:form action="signOut">	
				<s:submit />			
			</s:form>
					<s:form action="addBook">
						<s:textfield name="bookName" label="Book Name" required="true" />
 						<s:textfield name="ISBN" label="ISBN"/>
						<s:textfield name="price" label="Price" />
						<s:textfield name="stock" label="Stock" />
						<s:textfield name="manufacture" label="Manufacture" />
						<s:textfield name="category" label="Category" />
						<s:datetimepicker label="Publication Date" name="publicationDate" displayFormat="dd/MM/yyyy" required="true"/>
						<s:textfield name="author" label="Author" />
						<s:submit />
					</s:form>
			</div>
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


