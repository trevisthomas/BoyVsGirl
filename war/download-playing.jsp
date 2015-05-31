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
<link rel="stylesheet" href="css/style_masonry.css" />
<link rel="stylesheet" href="css/lightbox.css" />
<link rel="stylesheet" href="css/bvg.css" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="/fancybox/source/jquery.fancybox.css?v=2.1.3" type="text/css" media="screen" />
<link rel="stylesheet" href="/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<link rel="stylesheet" href="/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
	
<link rel="stylesheet" href="css/supersized.css" type="text/css" media="screen" />
<link rel="stylesheet" href="theme/supersized.shutter.css" type="text/css" media="screen" />


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
<script type="text/javascript" src="js/supersized.3.2.6.min.js"></script>
<script type="text/javascript" src="theme/supersized.shutter.min.js"></script>

<!-- scripts at bottom of page -->
<style>
#content {
	padding: 10px 10px 10px 180px;
}

#container {
	margin: 40px auto;
}

.box {
	background: rgba(50, 50, 50, 0.7);
}

#site-footer {
	clear: both;
	margin: 0px 0px;
	border-top: 0px solid black;
	padding-top: 10px;
	line-height: 30px;
	font-size: 95%;
	font-style: italic;
}

.fancybox-skin {
	position: relative;
	background: rgba(25, 25, 25, 0.7);
	color: #444;
	text-shadow: none;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.fancybox-title-float-wrap .child {
	background: rgba(25, 25, 25, 0.8);
	color: #666;
	line-height: 14px;
	padding: 5px;
}

.fancybox-nav {
    width: 60px;
}

.fancybox-nav span {
    visibility: visible;
    opacity: .1;
}

.fancybox-nav:hover span {
    opacity: .5;
}

.fancybox-close{
	opacity: .8;
}

.fancybox-caption{
	padding: 5px 0 0 0;
	font-size: 10px;
	font-style: italic;
	font-weight: lighter;
}
.social{
	padding:20px;
}
​</style>

<script type="text/javascript">
			
			jQuery(function($){
				
				$.supersized({
				
					// Functionality
					slideshow               :   1,			// Slideshow on/off
					autoplay				:	1,			// Slideshow starts playing automatically
					start_slide             :   0,			// Start slide (0 is random)
					stop_loop				:	0,			// Pauses slideshow on last slide
					random					: 	1,			// Randomize slide order (Ignores start slide)
					slide_interval          :   4000,		// Length between transitions
					transition              :   6, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
					transition_speed		:	1000,		// Speed of transition
					new_window				:	0,			// Image links open in new window/tab
					pause_hover             :   0,			// Pause slideshow on hover
					keyboard_nav            :   1,			// Keyboard navigation on/off
					performance				:	1,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
					image_protect			:	1,			// Disables image dragging and right click with Javascript
															   
					// Size & Position						   
					min_width		        :   0,			// Min width allowed (in pixels)
					min_height		        :   0,			// Min height allowed (in pixels)
					vertical_center         :   1,			// Vertically center background
					horizontal_center       :   1,			// Horizontally center background
					fit_always				:	0,			// Image will never exceed browser width or height (Ignores min. dimensions)
					fit_portrait         	:   1,			// Portrait images will not exceed browser height
					fit_landscape			:   0,			// Landscape images will not exceed browser width
															   
					// Components							
					slide_links				:	false,	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
					thumb_links				:	1,			// Individual thumb links for each slide
					thumbnail_navigation    :   0,			// Thumbnail navigation
					slides 					:  	[			// Slideshow Images
														<%
														
														for(Photo p : photoSet.getPhotos()){
													 	%>
														{image : '<%=p.getXxLarge()%>', title : '<%=p.getCreator()%>', thumb : '<%=p.getThumbUrl()%>'},
														<%
													  	}
													  	%>
												],
												
					// Theme Options			   
					progress_bar			:	0,			// Timer for each slide							
					mouse_scrub				:	0
					
				});
		    });
		    
		</script>

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
	
	//photoSet = zenfolio.loadPhotoSetPhotos(code, pageNumber); //20547770
	
	
	%>


		<div id="logo-block">
			<span id="logo"><img src="/img/BvG_Signature_2013_final_fancy.png" /></span>
		</div>

		<div class="menu-block">
			<%@ include file="menu.jsp"%>
		</div>
		
		
		
		<div id="container" class="clearfix">

		<%
		List<Photo> reverse = photoSet.getPhotos();
		Collections.reverse(reverse);
		for(Photo p : reverse){
		%>
			<div class="box photo col3">
				<a class="fancybox"  target="_blank" data-title-id="<%=p.getUniqueName()%>" rel="group" href="<%=p.getXxLarge()%>"><img width="<%=p.getMediumWidth()%>" height="<%=p.getMediumHeight()%>" src="<%=p.getMedium()%>" alt="" /></a>
				
				
			</div>
		<%
	  	}
	  	%>
		</div>
		<!-- #container -->
		

	</section>
	<!-- #content -->


	<div id="footer-block">
		<div class="footer">
			<%@ include file="footer.jsp"%>
		</div>
	</div>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
	<script src="js/jquery.masonry.min.js"></script>
	<script src="js/jquery.infinitescroll.min.js"></script>
	<script src="js/lightbox_resize.js"></script>
	
	<script>
		var $container = $('#container');

		$container.imagesLoaded(function() {
			$container.masonry({
				itemSelector : '.box',
				isAnimated : true
			});
		});
	</script>
	
	
	
	<!-- Add fancyBox -->
	<script type="text/javascript" src="/fancybox/source/jquery.fancybox.pack.js?v=2.1.3"></script>
	
	<!-- Optionally add helpers - button, thumbnail and/or media -->
	
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.5"></script>
	
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	
	
	


</body>
</html>