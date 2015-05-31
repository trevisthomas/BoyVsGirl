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
	

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>

<!-- scripts at bottom of page -->
<style>
#content {
	padding: 10px 10px 10px 10px;
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



	/* Navbar */
  .navbar + .docs-section {
    border-top-width: 0; }
  .navbar,
  .navbar-spacer {
    display: block;
    width: 100%;
    /*height: 6.5rem;*/
    margin-bottom: 1em;
    background: #fff;
    z-index: 99;
    border-top: 1px solid #eee;
    border-bottom: 1px solid #eee; }
  .navbar-spacer {
    display: none; }
  .navbar > .container {
    width: 100%; }
  .navbar-list {
    list-style: none;
    margin-bottom: 0; }
  .navbar-item {
    position: relative;
    float: left;
    margin-bottom: 0; }
  .navbar-link {
  	cursor: pointer;
    text-transform: uppercase;
    font-size: 0.75em;
    font-weight: 600;
    letter-spacing: .2rem;
    margin-right: 35px;
    text-decoration: none;
    line-height: 0.5rem;
    color: #999; }
    
  .navbar-link-last {
  	margin-right: 0.5em
	}  
	.navbar-link-first {
  		margin-left: 0.5em
	}
  .navbar-link.active {
    color: #33C3F0; }
    
    
    .center {
	    margin-left: auto;
	    margin-right: auto;
	}
	
.box {
  margin: 5px 0 100px 0;
  padding: 5px;
  background: #efefef;
  line-height: 1.4em;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}

.tt-footer {
  text-align: center;
  margin: 4em 0;
  font-size: 0.75em;
  color: grey;
  border-top: 1px solid #E1E1E1;
}

.center {
	    margin-left: auto;
	    margin-right: auto;
	    text-align: center;
	}

€‹</style>

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
		//pageNumber = Integer.valueOf((String)obj);
		pageNumber = Integer.valueOf(str);
	}
	
	//photoSet = zenfolio.loadPhotoSetPhotos(code, pageNumber); //20547770
	
	
	%>

		
		<div class="container">
		
		<div id="logo-block">
			<span id="logo"><img width="20%" src="/img/BvGLogo.png" /></span>
		</div>
		
		<%@ include file="new_menu.jsp"%>
		
		<div class="center">
		<%
		List<Photo> reverse = photoSet.getPhotos();
		Collections.reverse(reverse);
		for(Photo p : reverse){
		%>	
			<div id="<%=p.getUniqueName()%>" class="box">
			<a class="fancybox" target="_blank" href="<%=p.getXxLarge()%>">
				<img width="100%" src="<%=p.getXxLarge()%>" /><br>
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