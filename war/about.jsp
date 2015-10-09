<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.bvg.*"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<meta name="medium" content="image" />

<meta name="keywords" content="trevis thomas, chrissy thomas, photography, boy vs girl, boy vs girl photography, photos, photographers, photo portfolio, online photo portfolio, web photo portfolio, online photo gallery"/>



<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	
	  <link rel="stylesheet" href="css/normalize.css">
	  <link rel="stylesheet" href="css/skeleton.css">
	  <link rel="stylesheet" href="css/bvg-skeleton.css">
	

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>

<!-- scripts at bottom of page -->

<script type="text/javascript">
			
			

</head>

<body style="overflow: auto;" >
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

	<section id="content">
		<%	

	String str = request.getParameter("pageNumber");
	int pageNumber = 1;
	if(str != null){
		pageNumber = Integer.valueOf(str);
	}
	
	%>

		
		<div class="container">
		
		
		<%@ include file="new_logo.jsp"%>
		<%@ include file="new_menu.jsp"%>
		
		<div class="center">
		<h2>About Us</h2>

 
		<p align="left">Boy vs Girl Photography is a husband and wife team dedicated to the art of beauty and portrait photography.  We are always looking for ideas and for people to network and collaborate with.  We both have full time non-photography related careers but we spend most of our free time crafting our skills in the art of all things photography.</p>
		 
		<p align="left">If you like our style and are interested in hiring Boy vs Girl for a shoot feel free to contact us with what you'd like to do and we can discuss our rates.  </p>
		 
		<p align="left">If you are a model, hair stylist or makeup artist interested in collaborating with Boy vs Girl just send us a message and we’ll get back with you. </p>
		 
		<p align="left"> 
		Trevis and Chrissy Thomas<br>
		Boy vs Girl Photography<br>
		<a href="mailto:photographers@boyvsgirlphotography.com">photographers@boyvsgirlphotography.com</a><br>
		</p>
		
	  	</div>	
	  	
		<div class="tt-footer">
			<%@ include file="footer.jsp"%>
		</div>
	  	
		</div>
		<!-- #container -->
		

	</section>
	<!-- #content -->

	


</body>
</html>