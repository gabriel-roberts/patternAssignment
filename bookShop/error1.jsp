<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd"
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<title>TransMonit - Your transactions Matter</title>
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
              </ul>
			</div>
			<div id="content">
				<div class="left"> 
					<h1>You are not a user</h1>
					<p id = "text">
				You are not signed up as a user please contact your System Administrator or Supervisor to get signed up.
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


