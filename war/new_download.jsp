<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.bvg.*"%>

<%
	String code = request.getParameter("shootid");
	String title = "Download my shoot!";
%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<meta name="medium" content="image" />


<%	
	ZenfolioService zenfolio = new ZenfolioService();
	PhotoSet photoSet = zenfolio.loadPhotoSet(code);	
%>
	


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
		<%
		List<Photo> reverse = photoSet.getPhotos();
		Collections.reverse(reverse);
		for(Photo p : reverse){
		%>	
			<div id="<%=p.getUniqueName()%>" class="box">
			<a class="fancybox" target="_blank" href="<%=p.getXxLarge()%>">
				<img style='max-height:960; max-width:100%;' src="<%=p.getXxLarge()%>" alt="<%=p.getTitle()%>"/><br>
			</a>
			<%=p.getCreatorFromFileName()%> | <%=p.getTitle()%> 
			</div>
		<%
	  	}
	  	%>
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