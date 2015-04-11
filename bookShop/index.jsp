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
                <li class="menu1"><a href="index.jsp"> Log In </a></li>
				<li class="menu1"><a href="addCustomer.jsp"> Sign Up </a></li>
				<li class="menu1"><a href="adminLogin.jsp"> Admin Log In </a></li>
              </ul>
			</div>
			<div id="content">
				<div class="left"> 
					<h1>Welcome</h1>
				<div id="headingBlue">					
					<h2>What We Provide</h2>
						<p>Buy Books</p>
						<p>Review Books</p>
				</div>
					<s:form action="SignIn" >
						<s:textfield name="username" label="UserName" />
						<s:password name="password" label="Password" />
						<s:submit />
					</s:form>
				<p id = "text">
					If you are not a employee and wish to sign up please contact your supervisor to add you into the approved login list
				</p>
			</div>
			<div style="clear: both;"> </div>

		</div>
		<div id="footer">&copy; TransMonit - <a href="index.jsp">Log In</a></div>
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


