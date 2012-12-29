<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.bvg.*"%>

<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:zf="http://www.zenfolio.com/xml/page-schema" xml:lang="en">
	<!-- User-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) -->
	<!-- UA Code: ie9 -->
	<!-- Platform Code: windows -->
	<!-- Country Code: US -->
	<!-- Server: st02-a -->
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<title>Boy vs Girl Photography</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="imagetoolbar" content="no" /><meta name="description" content="Photography" /><meta name="robots" content="noindex" />
		
		<script type="text/javascript">
			//<!--
			if (self != top && self.name.indexOf('zenfolio') != 0) top.location.href = location.href;
			//-->

		 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		  <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
		  
		  		  
		  	
		</script>
		<link rel="stylesheet" href="css/style_masonry.css" />
		<link rel="stylesheet" href="css/lightbox.css" />
		
		<link rel="stylesheet" href="http://cdn.zenfolio.net/zf/css/en-US/ie9/windows/8HBP16ZBPBAF9/layout.css" type="text/css" /><link rel="stylesheet" href="http://cdn.zenfolio.net/zf/theme/en-US/ie9/windows/84T2DXMZXVBFZ/3B7T/8/custom.css" type="text/css" />
		<script src="http://cdn.zenfolio.net/zf/script/en-US/ie9/windows/8AUFHKU1JVBXP/layout.js" type="text/javascript">

		</script>
		
		
	

		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		
				
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.easing.min.js"></script>
		<script src="http://tab-slide-out.googlecode.com/files/jquery.tabSlideOut.v1.3.js"></script>
		
		<link rel="stylesheet" href="css/bvg.css" type="text/css" media="screen" />
		
		

	    <script type="text/javascript">
		    $(function(){
		        $('.slide-out-div').tabSlideOut({
		            tabHandle: '.about-us-slider',                     //class of the element that will become your tab
		            pathToTabImage: '/img/About-Tab_alpha70.png', //path to the image for the tab //Optionally can be set using css
		            imageHeight: '120px',                     //height of tab image           //Optionally can be set using css
		            imageWidth: '40px',                       //width of tab image            //Optionally can be set using css
		            tabLocation: 'right',                      //side of screen where tab lives, top, right, bottom, or left
		            speed: 300,                               //speed of animation
		            action: 'click',                          //options: 'click' or 'hover', action to trigger animation
		            topPos: '110px',                          //position from the top/ use if tabLocation is left or right
		            leftPos: '20px',                          //position from left/ use if tabLocation is bottom or top
		            fixedPosition: false                      //options: true makes it stick(fixed position) on scroll
		        });
		
		    });
		    
		    
		   
	
		    $(window).load(function () {
				//Automatically open the slide out tab
				var timer = setTimeout(function(){
					$('.about-us-slider').click();
				},5000);
				
				//Creating an x to close the about slider
				 $('.slide-out-x').click(function() {
					 $('.about-us-slider').click();
			     });
				
				 $('.about-us-slider').click(function() {
					 clearTimeout(timer);
			     });
			});
		    
	    </script>
		
		
		
	</head>
	
	 <style type="text/css">
          .slide-out-div {
	          padding: 20px;
	          width: 475px;
	          background-image: url("img/alpha70.png");
	          border: 0px solid #ccc;
	          color: #ccc;
	      }   
	      
	      .slide-out-div h1{
	      	color: white;
	      	font-size: larger;
	      }   
      </style>
	
	<style type="text/css">
			span#logo{
				margin: 10px 40px 10px 40px;
			}
			div#logo-block{
				background:url('img/logo-bg.png');
				position: absolute;
				left:0;
				top:0;
				width: 260px;
			}
			
			
			div#footer-block{
				position: absolute;
				bottom:0px;
				height:40px;
				left:0;
				background:url('img/nav-bg3.png');
				width:100%;
				
				
			}
			div#footer{
				height:40px;
				left:0;
			}
			.footer{
				line-height: 40px;
				color: #eee;
			
			}
			
			.footer A{
				color: #ccc;
			}
			
			div#social_networks{
				position: absolute;
				right:20px;
				bottom:40px;
				width: 170px;
			}
			
			.slide-out-x{
				background-image:url('img/closebtn.png');
				width: 20px;
				height: 20px;
				right: 0px;
				margin-right: 10px;
				position: absolute;
				cursor: pointer;
			}
			.slide-out-div{
				position: relative;
			}
			
			
	</style>
	
	<body>
		
		<section id="content">
	
		<div id="page-frame">
			

<div class="zenbar zenbar-bgcolor1 zenbar-font1  none" id="zenbar">
    <div class="zenbar-inner zenbar-bgimage1">
        

            <span class="zenbar-sb">
                <span class="zenbar-sb-back"></span>
                <span class="zenbar-sb-sharer zenbar-color1"></span>
                <span class="zenbar-sb-prefix zenbar-color1">Favorites:</span>
                <a class="zenbar-sb-link zenbar-color2" href="#">
                    <span class="text"></span>
                    <span class="icon"></span>
                </a>
                <a class="zenbar-sb-close zenbar-color2" href="#">&laquo; Back</a>
            </span>

            <div class="zenbar-sb-balloon" id="zenbar-sb-balloon">
                <div class="text"></div>
                <a href="#" class="close">Close</a>
            </div>

            <div id="zenbar-sbmenu" class="zenbar-sb-menu zenbar-menu zenbar-bgcolor1 zenbar-font1 none">
                <div class="zenbar-menu-inner zenbar-border1">
                    <div class="list">
                    </div>
                    <div class="sep"></div>
                    <a class="zenbar-sb-create zenbar-color5" href="#">
                        <span class="icon"></span>
                        Add new set
                    </a>
                </div>
            </div>

        
    
        		

        
            <span class="zenbar-cart">
                

                <a class="zenbar-cart-link zenbar-font2 zenbar-color3" href="http://photos.boyvsgirlphotography.com/cart.html">
                    <span class="text"></span><span class="icon"></span><span class="icon2"></span></a>
        
                <span class="zenbar-sep zenbar-color4">|</span>

                <a class="zenbar-color3" href="http://photos.boyvsgirlphotography.com/cart.html">
                    Checkout &raquo;</a>
    
            </span>
        

        <div id="zenbar-carti" class="zenbar-carti lb lb-font1 zenbar-color5 zenbar-border1 zenbar-bgcolor1 none">
            <div class="zenbar-carti-inner zenbar-border1">
                <div class="hdr zenbar-font3">
                    Shopping Cart
                </div>
                <div class="content zenbar-border1">
                    <div class="loading zenbar-color4">
                        Loading...
                    </div>
                    <div class="products none lb-font2">
                    </div>
                </div>
                <div class="total lb-color1 zenbar-font4">
                </div>
                <div class="bottom">
                    <a id="zenbar_GoToCart" class="button btn" href="http://photos.boyvsgirlphotography.com/cart.html"><div class="standard button-color1 button-bgcolor1 button-border1" id="zenbar_GoToCart-state">
				<div class="left">

				</div><div class="right">

				</div><div class="middle">
					<div class="label button-font1" onselectstart="return false">
						View Cart<div class="icon">

						</div>
					</div>
				</div>
			</div></a>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="pc" id="zenbar_Configurator">
				<div class="pc-bg">

				</div><div class="pc-frame pc-bgcolor1 pc-border1 pc-font1 pc-color1">
					<div class="pc-hdr pc-bgcolor2 pc-font3 pc-color2 pc-border2">

					</div><a class="pc-hdr-close pc-font2" href="#" onclick="return false;" onmousedown="_zf_zenbar_Configurator._close_onclick(event);">Close<span></span></a><div class="pc-body">

					</div>
				</div>
			</div>
</div>

<div class="mat-frame" id="mat-frame">
				<div id="mat-frame-height" class="mat-height" style="top:0px;bottom:0px">
					<div id="mat-frame-width" class="mat-width">
						<div class="mat-outer-h mat-horz-height mat-top" id="mat-frame-top">
							<div class="mat-frame-top-left mat-left mat-vert-width">

							</div><div class="mat-frame-top-right mat-right mat-vert-width">

							</div><div class="mat-frame-top mat-margin-left mat-margin-right">

							</div>
						</div><div class="mat-outer-h mat-horz-height mat-bottom" id="mat-frame-bottom">
							<div class="mat-frame-bottom-left mat-left mat-vert-width">

							</div><div class="mat-frame-bottom-right mat-right mat-vert-width">

							</div><div class="mat-frame-bottom mat-margin-left mat-margin-right">

							</div>
						</div><div class="mat-outer-m mat-top-total mat-bottom-total" id="mat-frame-middle">
							<div class="mat-frame-left mat-left mat-vert-width">

							</div><div class="mat-frame-right mat-right mat-vert-width">

							</div><div class="mat-frame-middle mat-margin-left mat-margin-right">

							</div>
						</div>
					</div>
				</div>

<div id="header" 
     class="header header-bgcolor1 header-bgimage1 header-border1 header-font1 header-left">
     
    <div class="header-inner header-search-compact">

        <div class="header-main">
        
            
            

            
            
            <div class="header-menu header-font1">
					

                
                <ul>
                        


                        <li class="header-link">

                                                        
                            <a class="header-color1" data-zf-index="1" href="http://www.boyvsgirlphotography.com">Home</a>
                        
                            
                       
                        </li>                        
                    
                    


                        <li class="header-link">

                            
                            <span class="header-separator header-color6">|</span>
                                                        
                            <a class="header-color1" data-zf-index="2" href="http://photos.boyvsgirlphotography.com/trevis">Trevis' Showcase</a>
                        
                            
                       
                        </li>                        
                        
                        <li class="header-link">

                            
                            <span class="header-separator header-color6">|</span>
                                                        
                            <a class="header-color1" data-zf-index="2" href="http://photos.boyvsgirlphotography.com/chrissy">Chrissy's Showcase</a>
                        
                            
                       
                        </li>
                    
                        <li class="header-link">

                            
                            <span class="header-separator header-color6">|</span>
                                                        
                            <a class="header-color1" data-zf-index="9" href="http://blog.boyvsgirlphotography.com/">Blog</a>
                        
                            
                       
                        </li>                        
                    
                    


                        <li class="header-link">

                            
                            <span class="header-separator header-color6">|</span>
                                                        
                            <a class="header-color1" data-zf-index="10" href="http://photos.boyvsgirlphotography.com/about">About</a>
                        
                            
                       
                        </li>                        
                    
                    


                        <li class="header-link">

                            
                            <span class="header-separator header-color6">|</span>
                                                        
                            <a class="header-color1" data-zf-index="11" href="http://photos.boyvsgirlphotography.com/contact.html">Contact</a>
                        
                            
                       
                        </li>                        
                    
                    
                </ul>
            
				</div>

            
            
                
                
                <div class="header-photog" style="width:130px;">
                    
                   
                    
                    
                </div>
                
                
        
        </div>

        
            <div class="header-search">
                <div class="header-search-slider header-bgcolor2 header-bgimage2 collapsed" id="header-search-slider">
                    <div id="header_SearchInput" class="searchi searchi-local" onmouseout="_zf_header_SearchInput._onmouseout(event)">
					<div class="searchi-left">

					</div><div class="searchi-right">

					</div><div class="searchi-top">

					</div><div class="searchi-inner header-bgcolor3">
						<input id="header_SearchInput-input" type="text" value="SEARCH" class="searchi-input header-bgcolor3 header-color3" onfocus="_zf_header_SearchInput._input_onfocus(this)" onblur="_zf_header_SearchInput._input_onblur(this)" onkeydown="_zf_header_SearchInput._input_onkeydown(event)" /><div class="searchi-icon" onclick="_zf_header_SearchInput.search('local')">

						</div>
					</div><div class="searchi-bottom">

					</div>
				</div>
                    <div class="header-search-icon"></div>
                </div>
            </div>
        

    </div>

</div>




<div class="layout-frame layout-bgcolor1 layout-bgimage1 layout-fixed visitor">
					<div class="mylayout" id="ctl02">

    

    <div id="ctl02_Center" class="column custom-default-column layout-bgimage3">
							 

        <div class="richtext">
            <p>	</p>
        </div>
        
	</div>
    
    <div id="ctl02_ctl02" class="filler clear line0">
    <div id="logo-block" >
    	<span id="logo"><img src="/img/LargeLogo2.png"/></span>
    </div>
    	
    
		
		
		
<div>
<%	ZenfolioService zenfolio = new ZenfolioService();

	String str = request.getParameter("pageNumber");
	int pageNumber = 1;
	if(str != null){
		//pageNumber = Integer.valueOf((String)obj);
		pageNumber = Integer.valueOf(str);
	}
	
	PhotoSet photoSet = zenfolio.loadPhotoSetPhotos("31637159", pageNumber); //20547770
	%>
    
      <h1>Trevis</h1>
</div>

<div id="container" class="clearfix">

	<%
	for(Photo p : photoSet.getPhotos()){
 	%>
 	<div class="box photo col3">
 		
 		<a href="<%=p.getXxLarge()%>" rel="lightbox" ><img src="<%=p.getMedium()%>" /></a>
 		
 	</div>
	<%
  	}
  	%>
</div> <!-- #container -->

		
		
		
		

<nav id="page-nav">
  <a href="masonry.jsp?pageNumber=<%=pageNumber+1%>"> <%=pageNumber+1%> </a>
</nav>

		
		
		
		
		
		
		
		
		
		
		
		
		
		
 
						</div>
						
						
						 
    <div id="ctl02_ctl03" class="copyright copyright-color1">
							
						</div>


					</div>
				</div>
				
				
				<div class="slide-out-div">
		            <a class="about-us-slider" href="http://link-for-non-js-users.html">Content</a>
		            <div class="slide-out-x"></div>
		             <div class="main">
			       		 <h1>About Boy vs Girl Photography</h1>
						<div>&nbsp;</div>
						<div>Boy vs Girl Photography is a husband and wife team dedicated to the art of beauty and portrait photography. &nbsp;We are always looking for ideas and for people to network and collaborate with. &nbsp;We both have full time non-photography related careers but we spend most of our free time crafting our skills in the art of all things photography.</div>
						<div>&nbsp;</div>
						<div>If you like our style and are interested in hiring<em> Boy vs Girl</em> for a shoot feel free to contact us with what you&#39;d like to do and we can discuss our rates. &nbsp;</div>
						<div>&nbsp;</div>
						<div>If you are a <strong>model</strong>,<strong> hair stylist</strong> or <strong>makeup artist</strong> interested in collaborating with <em>Boy vs Girl</em> just send us a message and we&rsquo;ll get back with you.&nbsp;</div>
						<div>&nbsp;</div>
						<div>Trevis and Chrissy Thomas</div>
						<div>Boy vs Girl Photography</div>
						<div><a href="mailto:photographers@boyvsgirlphotography.com?subject=Contact%20BvG%20from%20About%20Us">photographers@boyvsgirlphotography.com</a></div>
						<div>&nbsp;</div>
					</div>
				</div>
				




				
	
				



<div class="footer footer-border1 footer-bgcolor1 footer-color1 footer-font1 footer-bgimage1 "
    id="footer">

    <div class="footer-copyright footer-font2">
    </div>
     
     <div id="footer-block">
    	<div id="footer"><a href="" target="_blank">&#169; 2012 Boy Vs Girl Photography</a> | Trevis &amp; Chrissy Thomas</div>		
    </div>
    
</div>


			</div>
		</div>
		<div class="sbe lb lb-font1 lb-color1 none" id="ctl03">
			
			<div class="sbe-bg">

			</div><div class="sbe-i">
				<div class="sbe-header lb-bgcolor1 lb-color1 lb-border2">
					<span class="sbe-header-loading">Loading...</span><div class="sbe-header-right">
						<div class="sbe-btn-close">

						</div>
					</div>
				</div>
			</div>

<div class="sbe-ash popup popup-font1 popup-border1 popup-color1 popup-bgcolor1" id="ctl05">

    <div class="popup-title popup-font2"></div>

    <form class="options">

        <div class="option option-new">
            <input type="radio" name="scrapbook" value="new" />
            <span class="label popup-font2">
                Create a new set of favorites
            </span>
            <div class="newset">
                <div class="textfield form-field">
                    <label class="label label-font1 label-color1 required">
                        Favorites set name:
                    </label>
                    <input type="text" required="required" value="" name="title" class="input input-font1 input-color1 input-bgcolor1 input-border1" />
                </div>
            </div>
        </div>

        <div class="option option-same">
            <input type="radio" name="scrapbook" value="same" />
            <span class="label popup-font2">
                Continue adding photos to the current set.
            </span>

            <div class="textfield">
                <span class="label-font1">
                    Changes you make will be visible to photographer.
                </span>
            </div>
        </div>

        <div class="notagain">
            <input type="checkbox" name="notagain" />
            <span>Do not show this again</span>
        </div>

        <div class="buttons">
            <a id="ctl05_Add" class="button button-large btn-add" href="#"><div class="standard button-color1 button-bgcolor1 button-border1" id="ctl05_Add-state">
				<div class="left">

				</div><div class="right">

				</div><div class="middle">
					<div class="label button-font2" onselectstart="return false">
						Add Photos<div class="icon">

						</div>
					</div>
				</div>
			</div></a>
            <a id="ctl05_Cancel" class="button button-large btn-cancel" href="#"><div class="standard button-color1 button-bgcolor1 button-border1" id="ctl05_Cancel-state">
				<div class="left">

				</div><div class="right">

				</div><div class="middle">
					<div class="label button-font2" onselectstart="return false">
						Cancel<div class="icon">

						</div>
					</div>
				</div>
			</div></a>
        </div>
    </form>

</div>


<div class="sbe-crt popup popup-font1 popup-border1 popup-color1 popup-bgcolor1" id="ctl06">

    <div class="popup-title popup-font2">
        Create a new set of favorites
    </div>

    <form class="form">

        <div class="textfield form-field">
            <label class="label label-font1 label-color1 required">
                Favorites set name:
            </label>
            <input type="text" required="required" value="" name="title" class="input input-font1 input-color1 input-bgcolor1 input-border1" />
        </div>

                    

        <div class="buttons">
            <a id="ctl06_Create" class="button button-large btn-create" href="#"><div class="standard button-color1 button-bgcolor1 button-border1" id="ctl06_Create-state">
				<div class="left">

				</div><div class="right">

				</div><div class="middle">
					<div class="label button-font2" onselectstart="return false">
						Create<div class="icon">

						</div>
					</div>
				</div>
			</div></a>
            <a id="ctl06_Cancel" class="button button-large btn-cancel" href="#"><div class="standard button-color1 button-bgcolor1 button-border1" id="ctl06_Cancel-state">
				<div class="left">

				</div><div class="right">

				</div><div class="middle">
					<div class="label button-font2" onselectstart="return false">
						Cancel<div class="icon">

						</div>
					</div>
				</div>
			</div></a>
        </div>
    </form>

</div>

		</div><div id="ctl04" class="prefetch">

		</div><script type="text/javascript">
			//<!--
			zf_userId = 0;
			zf_userName = '';
			zf_userDomain = '';
			zf_defaultHost = 'www.zenfolio.com';
			zf_secureHost = 'secure.zenfolio.com';
			zf_defaultDomain = '.zenfolio.com';
			zf_cdnHost = 'cdn.zenfolio.net';
			zf_apiHost = 'api.zenfolio.com';
			zf_imageHosts = ["img-a.zenfolio.com","img-b.zenfolio.com","img-c.zenfolio.com","img-d.zenfolio.com"];
			zf_imageVS = [9,2,10,11,5,6,6,7,7,8,8,8,8,9,9,9,10,10,10,1,1,1,1,3,3,3,3,11,11,11,11,11,11,11,11,11,11,11,3,3,3,3];
			_zf_stdSetTimezoneOffset();
			zf_clientIp = '24.107.204.117';
			zf_NumberFormat.current = _$({"$meta":[["NumberFormat","currencyDecimalDigits","currencyDecimalSeparator","currencyGroupSeparator","currencyGroupSizes","currencySymbol","negativeSign","numberDecimalDigits","numberDecimalSeparator","numberGroupSeparator","numberGroupSizes","numberNegativePattern"]],"$root":{"$obj":[0,2,".",",",[3],"$","-",2,".",",",[3],1]}});
			var _zfl_init = {};
			zf_userId = 0;
			zf_ownerId = '482142300';
			zf_ownerName = 'boyvsgirlphotography';
			zf_ownerDomain = 'photos.boyvsgirlphotography.com';
			_zf_stdRegisterDelayLoad('/zf/script/en-US/ie9/windows/7UQKRXSV1NX6P/configurator.js');
			_zf_stdRegisterDelayLoad('/zf/script/en-US/ie9/windows/5KY99XVF7AA2N/jqueryui.js');
			_zf_stdRegisterDelayLoad('/zf/script/en-US/ie9/windows/NM7SZ6BXE3XN/scrapbook.js');
			zfl_SessionCookie.current = new zfl_SessionCookie('+X5ObArCJIE43Iqrn82io3zG...0');
			zfl_PasswordManager.init([]);
			_zfl_ctl02_init = { columns: {}, bins: {}, grids: {}, data: {}, pairs: {} };
			_zf_cartDefaultListTimestamp = 'QH1En5/JRVVD1lTu8+OFf+Rg9aw=';
			var _zf_ctl02_Center = new zfl_Column('ctl02_Center', null, [], false);
			var _zf_zenbar_GoToCart = new zfl_Button('zenbar_GoToCart', null);
			var _zf_zenbar_Configurator = new zfp_Configurator('zenbar_Configurator',0,'6VREKMVKFU221',_$(null));
			var _zf_zenbar = new zfl_ZenBar('zenbar', _$({"$meta":[["CartSummary","changeNumber","size","incomplete","productPrice"]],"$root":{"$obj":[0,0,0,false,0]}}), _zf_zenbar_Configurator, _$({"$meta":[["zfl_DecorationInfo","className","borderSize"]],"$root":{"$obj":[0,"prodcat",4]}}), false);
			zfl_Mat.current = new zfl_Mat('mat-frame', 0, 0, 'ctl02');
			var _zf_header_SearchInput = new zfl_SearchInput('header_SearchInput', null);
			var _zf_header = new zfl_Header('header', true);
			var _zf_ctl02_ctl03 = new zfl_Copyright('ctl02_ctl03');
			var _zf_footer = new zfl_Footer('footer');
			var _zf_ctl05_Add = new zfl_Button('ctl05_Add', null);
			var _zf_ctl05_Cancel = new zfl_Button('ctl05_Cancel', null);
			var _zf_ctl05 = new zfb_ScrapbookAddShared('ctl05', _zf_ctl05_Add);
			var _zf_ctl06_Create = new zfl_Button('ctl06_Create', null);
			var _zf_ctl06_Cancel = new zfl_Button('ctl06_Cancel', null);
			var _zf_ctl06 = new zfb_ScrapbookCreate('ctl06', _zf_ctl06_Create);
			var _zf_ctl03 = new zfb_ScrapbookEdit('ctl03', _$(null), _$(null), 482142300, true, true, 'zf_csb_boyvsgirlphotography', _zf_ctl05, _zf_ctl06);
			var _zf_ctl04 = new zf_Prefetch('ctl04', 18);
			_zfl_init.decorations = 
				{
					"$meta":[
						["zfl_DecorationInfo","className","borderSize","shadowType","imagePad","extraSize"]
					],
					"$objects":[
						[0,"square",2,"system",null,null]
					],
					"$root":{
						"DimLights":{"$obj":[0,"dimlights-decoration",2,"system",null,null]},
						"Slideshow":{"$obj":[0,"slideshow-decoration",null,"system",null,null]},
						"default":{"$obj":[0,"defdec",4,null,null,null]},
						"CommentBrowser":{"$obj":[0,"comdec",8,null,true,null]},
						"CurrentPhoto":{"$obj":[0,"largeimage",5,null,null,8]},
						"PhotoNavList.1":{"$ref":0},
						"PhotoVList.10":{"$obj":[0,"square",2,"system",true,null]},
						"PhotoNavThumbnail.1":{"$ref":0},
						"BioPhoto":{"$obj":[0,"bioimage",4,null,null,null]},
						"PageSlideshow":{"$obj":[0,"psdec",9,null,null,null]},
						"ProductCategory":{"$obj":[0,"prodcat",4,null,null,null]}
					}
				};
			_zfl_ctl02_init.analytics = new zfl_Analytics(false, '', null, null);
			_zfl_ctl02_init.fixedWidth = false;
			_zfl_ctl02_init.fillers = ['ctl02_ctl02'];
			_zfl_ctl02_init.columns.Center = _zf_ctl02_Center;
			_zfl_init.zenbar = _zf_zenbar;
			_zfl_init.header = _zf_header;
			_zfl_init.footer = _zf_footer;
			_zfl_init.scrapbook = _zf_ctl03;
			var _zf_ctl02 = new zfl_Layout('ctl02', _zfl_init, _zfl_ctl02_init);
			//-->

		</script>
		
		
		
		<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery.masonry.min.js"></script>
<script src="js/jquery.infinitescroll.min.js"></script>
<script src="js/lightbox.js"></script>



<script>

var $container = $('#container');

$container.imagesLoaded( function(){
  $container.masonry({
    itemSelector : '.box', 
    isAnimated: true
  });
});

  
    $container.infinitescroll({
        navSelector  : '#page-nav',    // selector for the paged navigation 
        nextSelector : '#page-nav a',  // selector for the NEXT link (to page 2)
        itemSelector : '.box',     // selector for all items you'll retrieve
        loading: {
            finishedMsg: 'No more pages to load.',
            img: 'http://i.imgur.com/6RMhx.gif'
          }
        },
        // trigger Masonry as a callback
        function( newElements ) {
          // hide new items while they are loading
          var $newElems = $( newElements ).css({ opacity: 0 });
          // ensure that images load before adding to masonry layout
          $newElems.imagesLoaded(function(){
            // show elems now they're ready
            $newElems.animate({ opacity: 1 });
            $container.masonry( 'appended', $newElems, true ); 
          });
        }
      );
 
</script>
    

  </section> <!-- #content -->
	</body>
</html>



