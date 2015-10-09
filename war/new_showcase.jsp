<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.bvg.*"%>

<%
	String who = request.getParameter("who");
	String code;
	if(who != null && "chrissy".compareToIgnoreCase(who) == 0){
		code = "143596818";
		//143596818 - chrissy's showcase
		//31637159 - trevis showcase
	}
	else{
		code = "31637159";
	}
	String show = request.getParameter("show");
	String defaultTitle = "Boy vs Girl Photography | " + who;
	String title = defaultTitle;

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
	
	PhotoSet photoSet = zenfolio.loadPhotoSetPhotos(code, 1);
	%>
	
<%
if(show==null){
%>
	<title><%=defaultTitle%></title>
	<meta name="description" content="Boy vs Girl Photography - <%=who%>'s Showcase" />
	<link rel="image_src" href="<%=photoSet.getPhotos().get(0).getThumbUrl()%>" />
<% } else { 
	String photoId =  show.substring(show.lastIndexOf("/p") + 2, show.indexOf("-6.jpg"));
	Photo p = zenfolio.loadPhoto(photoId);
%>	
	<title><%=p.getTitle()%> by <%=who%> | Boy vs Girl Photography</title>
	<meta name="description" content="<%=p.getCaption()%>&nbsp;&copy; Boy vs Girl Photography" />
	<link rel="image_src" href="<%=p.getSquareThumbUrl()%>" />
	<link rel="image_src" href="<%=p.getSmallerThumbUrl()%>" />	
	<link rel="image_src" href="<%=p.getThumbUrl()%>" />
<% } %>


<link rel="stylesheet" href="css/lightbox.css" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

<meta name="keywords" content="trevis thomas, chrissy thomas, photography, boy vs girl, boy vs girl photography, photos, photographers, photo portfolio, online photo portfolio, web photo portfolio, online photo gallery"/>



<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	
	  <link rel="stylesheet" href="css/normalize.css">
	  <link rel="stylesheet" href="css/skeleton.css">
	  <link rel="stylesheet" href="css/bvg-skeleton.css">
	

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>

<!-- scripts at bottom of page -->
</head>

<body style="overflow: auto;">
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
		//pageNumber = Integer.valueOf((String)obj);
		pageNumber = Integer.valueOf(str);
	}
	
	photoSet = zenfolio.loadPhotoSetPhotos(code, pageNumber); //20547770
	%>



		<div class="container">
		<%@ include file="new_logo.jsp"%>
		<%@ include file="new_menu.jsp"%>
		<div id="container" class="clearfix center">
		
		
		
		
		<%
		for(Photo p : photoSet.getPhotos()){
		%>	
			<div class="box">
			<a class="fancybox" href="new_download.jsp?shootid=<%=p.getPhotoSetIdOfPhoto()%>#<%=p.getUniqueName()%>">
				<img style='max-height:960; max-width:100%;' src="<%=p.getXxLarge()%>" alt="<%=p.getTitle()%>" /><br>
			</a>
			<%=p.getCreatorFromFileName()%> | <%=p.getTitle()%> 
			</div>
		<%
	  	}
	  	%>
	  	
	  	<nav id="page-nav" style="visibility: hidden;">
			<a href="new_showcase.jsp?pageNumber=<%=pageNumber+1%>&who=<%=who!=null?who:""%>"> Next </a>
		</nav>
		</div>
	  	
		<div class="tt-footer">
			<%@ include file="footer.jsp"%>
		</div>
	  	
		</div>
	
		<!-- #container -->
		
		
		

	</section>
	<!-- #content -->

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
	<script src="js/jquery.masonry.min.js"></script>
	<script src="js/jquery.infinitescroll.min.js"></script>
	<script src="js/lightbox_resize.js"></script>
	
	
	
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="/fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>
	
	<!-- Add fancyBox -->
	<script type="text/javascript" src="/fancybox/source/jquery.fancybox.pack.js?v=2.1.3"></script>
	
	<!-- Optionally add helpers - button, thumbnail and/or media -->
	
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.5"></script>
	
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	
	
	
	<script>
		var $container = $('#container');

		

		$container.infinitescroll({
			navSelector : '#page-nav', // selector for the paged navigation 
			nextSelector : '#page-nav a', // selector for the NEXT link (to page 2)
			itemSelector : '.box', // selector for all items you'll retrieve
			loading : {
				finishedMsg : 'No more pages to load.',
				img : '/img/progress.gif'
			}
		},
		
		function(newElements) {
			
		});
	</script>
	


</body>
</html>