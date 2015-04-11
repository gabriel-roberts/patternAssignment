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
						<h2>All Books</h2>
			 
			<table border="1px" cellpadding="8px">
				<tr>
					<th>Book Name</th>
					<th>ISBN</th>
					<th>Price</th>
					<th>Stock</th>					
					<th>Manufacture</th>
					<th>Category</th>
					<th>Publication Date</th>
					<th>Author</th>
						<th></th>
						<th></th>
						<th></th>
				</tr>
				<s:iterator value="bookList">
					<tr>
						<td><s:property value="bookName" /></td>
						<td><s:property value="ISBN" /></td>
						<td><s:property value="price" /></td>
						<td><s:property value="stock" /></td>
						<td><s:property value="manufacture" /></td>
						<td><s:property value="category" /></td>
						<td><s:property value="publicationDate" /></td>
						<td><s:property value="author" /></td>
						<s:if test="%{#session.Administrator.getId()> 0}">
							<td><s:url id="editBook" action="findBook">
									<s:param name="id" value="id"></s:param>
								</s:url>
									<s:a href="%{editBook}">Edit</s:a></td>
							<td><s:url id="deleteBook" action="deleteBook">
									<s:param name="username" value="%{#session.Administrator.username}"/>
									<s:param name="id" value="id"></s:param>
								</s:url>
							<s:a href="%{deleteBook}">Delete</s:a></td>
						</s:if>
						<s:if test="%{#session.Customer.getId()> 0}">
							<td><s:url id="rateBook" action="rateBook">
									<s:param name="id" value="id"></s:param>
								</s:url>
									<s:a href="%{rateBook}">Rate</s:a></td>
							<td><s:url id="buyBook" action="buyBook">
									<s:param name="customer_id" value="%{#session.Customer.id}"></s:param>
									<s:param name="book_id" value="id"></s:param>
								</s:url>
							<s:a href="%{buyBook}">Buy</s:a></td>
							<td><s:url id="listComments" action="listComments">
									<s:param name="book_id" value="id"></s:param>
								</s:url>
							<s:a href="%{listComments}">Comments</s:a></td>
						</s:if>
					</tr>
				</s:iterator>
			</table>
			
					<s:form action="searchBook">
						<s:combobox label="Search Criteria" name="criteria" readonly="true"
								   headerValue="Critera"
								   list="{"Category","Manufacturer"}"/>
							<s:textfield name="searchParameter" label="Seatch Parameter"/>
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


