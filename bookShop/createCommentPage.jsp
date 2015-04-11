<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd"
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<title>The Book Store - For your Brainy Instants</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
	<head>
		<s:head theme="ajax" />
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
				<div class="left"> 
					<h1>Welcome <s:property value="%{#session.Customer.username}" /> </h1>
						<p>Book Name: <s:property value="%{book.bookName}" />
						<p>Book Author: <s:property value="%{book.author}" />
						<p>Book Category: <s:property value="%{book.category}" />
						<p>Book ISBN: <s:property value="%{book.ISBN}" />
					<s:form action="addComment" >
							<s:textarea name="comment" label="Comment" required="true" cols="100" rows="10"/>
							<s:combobox label="Rateing" name="rateing" readonly="true"
								   headerValue="Rating"
								   list="{1,2,3,4,5}"/>
							<s:hidden name="customer_id" value="%{#session.Customer.id}"/>
							<s:hidden name="book_id" value="%{book.id}"/>
						<s:submit />
					</s:form>
					
			<table border="1px" cellpadding="8px">
				<tr>
					<th>Customer</th>
					<th>Comments</th>
					<th>Ratings</th>
					<th>Books</th>
				</tr>
				<s:iterator value="commentsList" >
					<tr>
						<td><s:property value="customer_id.username" /></td>
						<td><s:property value="comment" /></td>
						<td><s:property value="rateing" /></td>
						<td><s:property value="book_id.bookName" /></td>
					</tr>
				</s:iterator>
			</table>
			<s:form action="listComments">
				<s:hidden name="book_id" value="%{book.id}"/>
				<s:submit action="findBook"/>
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


