<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>
<html b:version='2' class='v2' expr:dir='data:blog.languageDirection' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
  <head>
    <meta content='IE=EmulateIE7' http-equiv='X-UA-Compatible'/>
    <b:if cond='data:blog.isMobile'>
      <meta content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0' name='viewport'/>
    <b:else/>
      <meta content='width=1100' name='viewport'/>
    </b:if>
    <b:include data='blog' name='all-head-content'/>
    <title><data:blog.pageTitle/></title>
    <meta expr:content='data:blog.metaDescription' name='description'/>

    <b:skin><![CDATA[/*
-----------------------------------------------
Blogger Template Style
Name:     Awesome Inc.
Designer: Tina Chen
URL:      tinachen.org
----------------------------------------------- */

/* Variable definitions
   ====================
   <Variable name="keycolor" description="Main Color" type="color" default="#ffffff" value="#ffffff"/>

   <Group description="Page" selector="body">
     <Variable name="body.font" description="Font" type="font"
         default="normal normal 13px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 13px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="body.background.color" description="Background Color" type="color" default="#000000" value="#000000"/>
     <Variable name="body.text.color" description="Text Color" type="color" default="#ffffff" value="#ffffff"/>
   </Group>

   <Group description="Links" selector=".main-inner">
     <Variable name="link.color" description="Link Color" type="color" default="#888888" value="#888888"/>
     <Variable name="link.visited.color" description="Visited Color" type="color" default="#444444" value="#444444"/>
     <Variable name="link.hover.color" description="Hover Color" type="color" default="#cccccc" value="#cccccc"/>
   </Group>

   <Group description="Blog Title" selector=".header h1">
     <Variable name="header.font" description="Title Font" type="font"
         default="normal bold 40px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal bold 40px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="header.text.color" description="Title Color" type="color" default="$(body.text.color)"  value="$(body.text.color)"/>
     <Variable name="header.background.color" description="Header Background" type="color" default="transparent"  value="transparent"/>
   </Group>

   <Group description="Blog Description" selector=".header .description">
     <Variable name="description.font" description="Font" type="font"
         default="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="description.text.color" description="Text Color" type="color"
         default="$(body.text.color)"  value="$(body.text.color)"/>
   </Group>

   <Group description="Tabs Text" selector=".tabs-inner .widget li a">
     <Variable name="tabs.font" description="Font" type="font"
         default="normal bold 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal bold 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="tabs.text.color" description="Text Color" type="color" default="$(body.text.color)" value="$(body.text.color)"/>
     <Variable name="tabs.selected.text.color" description="Selected Color" type="color" default="$(tabs.text.color)" value="$(tabs.text.color)"/>
   </Group>

   <Group description="Tabs Background" selector=".tabs-outer .PageList">
     <Variable name="tabs.background.color" description="Background Color" type="color" default="#141414" value="#141414"/>
     <Variable name="tabs.selected.background.color" description="Selected Color" type="color" default="#444444" value="#444444"/>
     <Variable name="tabs.border.color" description="Border Color" type="color" default="$(widget.border.color)" value="$(widget.border.color)"/>
   </Group>

   <Group description="Date Header" selector=".main-inner .widget h2.date-header, .main-inner .widget h2.date-header span">
     <Variable name="date.font" description="Font" type="font"
         default="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="date.text.color" description="Text Color" type="color" default="#666666" value="#666666"/>
     <Variable name="date.border.color" description="Border Color" type="color" default="$(widget.border.color)" value="$(widget.border.color)"/>
   </Group>

   <Group description="Post Title" selector="h3.post-title, h4, h3.post-title a">
     <Variable name="post.title.font" description="Font" type="font"
         default="normal bold 22px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal bold 22px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="post.title.text.color" description="Text Color" type="color" default="$(body.text.color)" value="$(body.text.color)"/>
   </Group>

   <Group description="Post Background" selector=".post">
     <Variable name="post.background.color" description="Background Color" type="color" default="$(widget.background.color)"  value="$(widget.background.color)"/>
     <Variable name="post.border.color" description="Border Color" type="color" default="$(widget.border.color)"  value="$(widget.border.color)"/>
     <Variable name="post.border.bevel.color" description="Bevel Color" type="color" default="$(widget.border.color)" value="$(widget.border.color)"/>
   </Group>

   <Group description="Gadget Title" selector="h2">
     <Variable name="widget.title.font" description="Font" type="font"
        default="normal bold 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal bold 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="widget.title.text.color" description="Text Color" type="color" default="$(body.text.color)" value="$(body.text.color)"/>
   </Group>

   <Group description="Gadget Text" selector=".sidebar .widget">
     <Variable name="widget.font" description="Font" type="font"
        default="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif" value="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
     <Variable name="widget.text.color" description="Text Color" type="color" default="$(body.text.color)" value="$(body.text.color)"/>
     <Variable name="widget.alternate.text.color" description="Alternate Color" type="color" default="#666666" value="#666666"/>
   </Group>

   <Group description="Gadget Links" selector=".sidebar .widget">
     <Variable name="widget.link.color" description="Link Color" type="color" default="$(link.color)" value="$(link.color)"/>
     <Variable name="widget.link.visited.color" description="Visited Color" type="color" default="$(link.visited.color)" value="$(link.visited.color)"/>
     <Variable name="widget.link.hover.color" description="Hover Color" type="color" default="$(link.hover.color)" value="$(link.hover.color)"/>
   </Group>

   <Group description="Gadget Background" selector=".sidebar .widget">
     <Variable name="widget.background.color" description="Background Color" type="color" default="#141414" value="#141414"/>
     <Variable name="widget.border.color" description="Border Color" type="color" default="#222222" value="#222222"/>
     <Variable name="widget.border.bevel.color" description="Bevel Color" type="color" default="#000000" value="#000000"/>
   </Group>

   <Group description="Sidebar Background" selector=".column-left-inner .column-right-inner">
     <Variable name="widget.outer.background.color" description="Background Color" type="color" default="transparent"  value="transparent"/>
   </Group>

   <Group description="Images" selector=".main-inner">
     <Variable name="image.background.color" description="Background Color" type="color" default="transparent" value="#222222"/>
     <Variable name="image.border.color" description="Border Color" type="color" default="transparent" value="transparent"/>
   </Group>

   <Group description="Feed" selector=".blog-feeds">
      <Variable name="feed.text.color" description="Text Color" type="color" default="$(body.text.color)" value="$(body.text.color)"/>
   </Group>

   <Group description="Feed Links" selector=".blog-feeds">
     <Variable name="feed.link.color" description="Link Color" type="color" default="$(link.color)" value="$(link.color)"/>
     <Variable name="feed.link.visited.color" description="Visited Color" type="color" default="$(link.visited.color)" value="$(link.visited.color)"/>
     <Variable name="feed.link.hover.color" description="Hover Color" type="color" default="$(link.hover.color)" value="$(link.hover.color)"/>
   </Group>

   <Group description="Pager" selector=".blog-pager">
     <Variable name="pager.background.color" description="Background Color" type="color" default="$(post.background.color)"  value="$(post.background.color)"/>
   </Group>

   <Group description="Footer" selector=".footer-outer">
     <Variable name="footer.background.color" description="Background Color" type="color" default="$(widget.background.color)"  value="$(widget.background.color)"/>
     <Variable name="footer.text.color" description="Text Color" type="color" default="$(body.text.color)"  value="$(body.text.color)"/>
   </Group>

   <Variable name="title.shadow.spread" description="Title Shadow" type="length" default="-1px" value="-1px"/>

   <Variable name="body.background" description="Body Background" type="background"
       color="$(body.background.color)"
       default="$(color) none repeat scroll top left" value="$(color) url(http://www.blogblog.com/1kt/awesomeinc/body_background_dark.png) repeat scroll top left"/>
   <Variable name="body.background.gradient.cap" description="Body Gradient Cap" type="url"
       default="none" value="url(http://www.blogblog.com/1kt/awesomeinc/body_gradient_dark.png)"/>
   <Variable name="body.background.size" description="Body Background Size" type="string" default="auto" value="auto"/>

   <Variable name="tabs.background.gradient" description="Tabs Background Gradient" type="url"
       default="none" value="none"/>

   <Variable name="header.background.gradient" description="Header Background Gradient" type="url" default="none"  value="none"/>
   <Variable name="header.padding.top" description="Header Top Padding" type="length" default="22px"  value="22px"/>
   <Variable name="header.margin.top" description="Header Top Margin" type="length" default="0"  value="0"/>
   <Variable name="header.margin.bottom" description="Header Bottom Margin" type="length" default="0"  value="0"/>

   <Variable name="widget.padding.top" description="Widget Padding Top" type="length" default="8px"  value="8px"/>
   <Variable name="widget.padding.side" description="Widget Padding Side" type="length" default="15px"  value="15px"/>
   <Variable name="widget.outer.margin.top" description="Widget Top Margin" type="length" default="0"  value="0"/>
   <Variable name="widget.outer.background.gradient" description="Gradient" type="url" default="none"  value="none"/>
   <Variable name="widget.border.radius" description="Gadget Border Radius" type="length" default="0"  value="0"/>
   <Variable name="outer.shadow.spread" description="Outer Shadow Size" type="length" default="0"  value="0"/>

   <Variable name="date.header.border.radius.top" description="Date Header Border Radius Top" type="length" default="0"  value="0"/>
   <Variable name="date.header.position" description="Date Header Position" type="length" default="15px"  value="15px"/>

   <Variable name="date.space" description="Date Space" type="length" default="30px"  value="30px"/>
   <Variable name="date.position" description="Date Float" type="string" default="static"  value="static"/>
   <Variable name="date.padding.bottom" description="Date Padding Bottom" type="length" default="0"  value="0"/>
   <Variable name="date.border.size" description="Date Border Size" type="length" default="0"  value="0"/>
   <Variable name="date.background" description="Date Background" type="background" color="transparent"
       default="$(color) none no-repeat scroll top left"  value="$(color) none no-repeat scroll top left"/>
   <Variable name="date.first.border.radius.top" description="Date First top radius" type="length" default="$(widget.border.radius)"  value="$(widget.border.radius)"/>
   <Variable name="date.last.space.bottom" description="Date Last Space Bottom" type="length"
       default="20px"  value="20px"/>
   <Variable name="date.last.border.radius.bottom" description="Date Last bottom radius" type="length" default="$(widget.border.radius)"  value="$(widget.border.radius)"/>

   <Variable name="post.first.padding.top" description="First Post Padding Top" type="length" default="0"  value="0"/>

   <Variable name="image.shadow.spread" description="Image Shadow Size" type="length" default="0" value="0"/>
   <Variable name="image.border.radius" description="Image Border Radius" type="length" default="0" value="0"/>

   <Variable name="separator.outdent" description="Separator Outdent" type="length" default="15px"  value="15px"/>
   <Variable name="title.separator.border.size" description="Widget Title Border Size" type="length" default="1px"  value="1px"/>
   <Variable name="list.separator.border.size" description="List Separator Border Size" type="length" default="1px"  value="1px"/>
   <Variable name="shadow.spread" description="Shadow Size" type="length" default="0" value="0"/>

   <Variable name="startSide" description="Side where text starts in blog language" type="automatic" default="left" value="left"/>
   <Variable name="endSide" description="Side where text ends in blog language" type="automatic" default="right" value="right"/>

   <Variable name="date.side" description="Side where date header is placed" type="string" default="$(endSide)" value="$(endSide)"/>

   <Variable name="pager.border.radius.top" description="Pager Border Top Radius" type="length" default="$(widget.border.radius)"  value="$(widget.border.radius)"/>
   <Variable name="pager.space.top" description="Pager Top Space" type="length" default="1em"  value="1em"/>

   <Variable name="footer.background.gradient" description="Background Gradient" type="url" default="none"  value="none"/>

   <Variable name="mobile.background.size" description="Mobile Background Size" type="string"
       default="$(body.background.size)" value="$(body.background.size)"/>
   <Variable name="mobile.background.overlay" description="Mobile Background Overlay" type="string"
       default="transparent none repeat scroll top left" value="transparent none repeat scroll top left"/>
   <Variable name="mobile.button.color" description="Mobile Button Color" type="color" default="#ffffff"  value="#ffffff"/>
*/

/* Content
----------------------------------------------- */
body {
  font: $(body.font);
  color: $(body.text.color);
  background: $(body.background);
}

html body .content-outer {
  min-width: 0;
  max-width: 100%;
  width: 100%;
}

a:link {
  text-decoration: none;
  color: $(link.color);
}

a:visited {
  text-decoration: none;
  color: $(link.visited.color);
}

a:hover {
  text-decoration: underline;
  color: $(link.hover.color);
}

.body-fauxcolumn-outer .cap-top {
  position: absolute;
  z-index: 1;

  height: 276px;
  width: 100%;

  background: transparent $(body.background.gradient.cap) repeat-x scroll top left;
  _background-image: none;
}

/* Columns
----------------------------------------------- */
.content-inner {
  padding: 0;
}

.header-inner .section {
  margin: 0 16px;
}

.tabs-inner .section {
  margin: 0 16px;
}

.main-inner {
  padding-top: $(date.space);
}

.main-inner .column-center-inner,
.main-inner .column-left-inner,
.main-inner .column-right-inner {
  padding: 0 5px;
}

*+html body .main-inner .column-center-inner {
  margin-top: -$(date.space);
}

#layout .main-inner .column-center-inner {
  margin-top: 0;
}

/* Header
----------------------------------------------- */
.header-outer {
  margin: $(header.margin.top) 0 $(header.margin.bottom) 0;
  background: $(header.background.color) $(header.background.gradient) repeat scroll 0 0;
}

.Header h1 {
  font: $(header.font);
  color: $(header.text.color);
  text-shadow: 0 0 $(title.shadow.spread) #000000;
}

.Header h1 a {
  color: $(header.text.color);
}

.Header .description {
  font: $(description.font);
  color: $(description.text.color);
}

.header-inner .Header .titlewrapper,
.header-inner .Header .descriptionwrapper {
  padding-left: 0;
  padding-right: 0;
  margin-bottom: 0;
}

.header-inner .Header .titlewrapper {
  padding-top: $(header.padding.top);
}

/* Tabs
----------------------------------------------- */
.tabs-outer {
  overflow: hidden;
  position: relative;
  background: $(tabs.background.color) $(tabs.background.gradient) repeat scroll 0 0;
}

#layout .tabs-outer {
  overflow: visible;
}

.tabs-cap-top, .tabs-cap-bottom {
  position: absolute;
  width: 100%;

  border-top: 1px solid $(tabs.border.color);

}

.tabs-cap-bottom {
  bottom: 0;
}

.tabs-inner .widget li a {
  display: inline-block;

  margin: 0;
  padding: .6em 1.5em;

  font: $(tabs.font);
  color: $(tabs.text.color);

  border-top: 1px solid $(tabs.border.color);
  border-bottom: 1px solid $(tabs.border.color);
  border-$startSide: 1px solid $(tabs.border.color);
}

.tabs-inner .widget li:last-child a {
  border-$endSide: 1px solid $(tabs.border.color);
}

.tabs-inner .widget li.selected a, .tabs-inner .widget li a:hover {
  background: $(tabs.selected.background.color) $(tabs.background.gradient) repeat-x scroll 0 -100px;
  color: $(tabs.selected.text.color);
}

/* Headings
----------------------------------------------- */
h2 {
  font: $(widget.title.font);
  color: $(widget.title.text.color);
}

/* Widgets
----------------------------------------------- */
.main-inner .section {
  margin: 0 27px;
  padding: 0;
}

.main-inner .column-left-outer,
.main-inner .column-right-outer {
  margin-top: $(widget.outer.margin.top);
}

#layout .main-inner .column-left-outer,
#layout .main-inner .column-right-outer {
  margin-top: 0;
}

.main-inner .column-left-inner,
.main-inner .column-right-inner {
  background: $(widget.outer.background.color) $(widget.outer.background.gradient) repeat 0 0;

  -moz-box-shadow: 0 0 $(outer.shadow.spread) rgba(0, 0, 0, .2);
  -webkit-box-shadow: 0 0 $(outer.shadow.spread) rgba(0, 0, 0, .2);
  -goog-ms-box-shadow: 0 0 $(outer.shadow.spread) rgba(0, 0, 0, .2);
  box-shadow: 0 0 $(outer.shadow.spread) rgba(0, 0, 0, .2);

  -moz-border-radius: $(widget.border.radius);
  -webkit-border-radius: $(widget.border.radius);
  -goog-ms-border-radius: $(widget.border.radius);
  border-radius: $(widget.border.radius);
}

#layout .main-inner .column-left-inner,
#layout .main-inner .column-right-inner {
  margin-top: 0;
}

.sidebar .widget {
  font: $(widget.font);
  color: $(widget.text.color);
}

.sidebar .widget a:link {
  color: $(widget.link.color);
}

.sidebar .widget a:visited {
  color: $(widget.link.visited.color);
}

.sidebar .widget a:hover {
  color: $(widget.link.hover.color);
}

.sidebar .widget h2 {
  text-shadow: 0 0 $(title.shadow.spread) #000000;
}

.main-inner .widget {
  background-color: $(widget.background.color);
  border: 1px solid $(widget.border.color);
  padding: 0 $(widget.padding.side) 15px;
  margin: 20px -16px;

  -moz-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -webkit-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -goog-ms-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);

  -moz-border-radius: $(widget.border.radius);
  -webkit-border-radius: $(widget.border.radius);
  -goog-ms-border-radius: $(widget.border.radius);
  border-radius: $(widget.border.radius);
}

.main-inner .widget h2 {
  margin: 0 -$(separator.outdent);
  padding: .6em $(separator.outdent) .5em;
  border-bottom: 1px solid $(widget.border.bevel.color);
}

.footer-inner .widget h2 {
  padding: 0 0 .4em;

  border-bottom: 1px solid $(widget.border.bevel.color);
}

.main-inner .widget h2 + div, .footer-inner .widget h2 + div {
  border-top: $(title.separator.border.size) solid $(widget.border.color);
  padding-top: $(widget.padding.top);
}

.main-inner .widget .widget-content {
  margin: 0 -$(separator.outdent);
  padding: 7px $(separator.outdent) 0;
}

.main-inner .widget ul, .main-inner .widget #ArchiveList ul.flat {
  margin: -$(widget.padding.top) -15px 0;
  padding: 0;

  list-style: none;
}

.main-inner .widget #ArchiveList {
  margin: -$(widget.padding.top) 0 0;
}

.main-inner .widget ul li, .main-inner .widget #ArchiveList ul.flat li {
  padding: .5em 15px;
  text-indent: 0;

  color: $(widget.alternate.text.color);

  border-top: $(list.separator.border.size) solid $(widget.border.color);
  border-bottom: 1px solid $(widget.border.bevel.color);
}

.main-inner .widget #ArchiveList ul li {
  padding-top: .25em;
  padding-bottom: .25em;
}

.main-inner .widget ul li:first-child, .main-inner .widget #ArchiveList ul.flat li:first-child {
  border-top: none;
}

.main-inner .widget ul li:last-child, .main-inner .widget #ArchiveList ul.flat li:last-child {
  border-bottom: none;
}

.post-body {
  position: relative;
}

.main-inner .widget .post-body ul {
  padding: 0 2.5em;
  margin: .5em 0;

  list-style: disc;
}

.main-inner .widget .post-body ul li {
  padding: 0.25em 0;
  margin-bottom: .25em;

  color: $(body.text.color);

  border: none;
}

.footer-inner .widget ul {
  padding: 0;

  list-style: none;
}

.widget .zippy {
  color: $(widget.alternate.text.color);
}

/* Posts
----------------------------------------------- */
body .main-inner .Blog {
  padding: 0;
  margin-bottom: 1em;

  background-color: transparent;
  border: none;

  -moz-box-shadow: 0 0 0 rgba(0, 0, 0, 0);
  -webkit-box-shadow: 0 0 0 rgba(0, 0, 0, 0);
  -goog-ms-box-shadow: 0 0 0 rgba(0, 0, 0, 0);
  box-shadow: 0 0 0 rgba(0, 0, 0, 0);
}

.main-inner .section:last-child .Blog:last-child {
  padding: 0;
  margin-bottom: 1em;
}

.main-inner .widget h2.date-header {
  margin: 0 -15px 1px;
  padding: 0 0 $(date.padding.bottom) 0;

  font: $(date.font);
  color: $(date.text.color);

  background: $(date.background);

  border-top: $(date.border.size) solid $(date.border.color);
  border-bottom: 1px solid $(widget.border.bevel.color);

  -moz-border-radius-topleft: $(date.header.border.radius.top);
  -moz-border-radius-topright: $(date.header.border.radius.top);
  -webkit-border-top-left-radius: $(date.header.border.radius.top);
  -webkit-border-top-right-radius: $(date.header.border.radius.top);
  border-top-left-radius: $(date.header.border.radius.top);
  border-top-right-radius: $(date.header.border.radius.top);

  position: $(date.position);
  bottom: 100%;
  $(date.side): $(date.header.position);
  text-shadow: 0 0 $(title.shadow.spread) #000000;
}

.main-inner .widget h2.date-header span {
  font: $(date.font);
  display: block;
  padding: .5em 15px;
  border-left: $(date.border.size) solid $(date.border.color);
  border-right: $(date.border.size) solid $(date.border.color);
}

.date-outer {
  position: relative;
  margin: $(date.space) 0 20px;
  padding: 0 15px;

  background-color: $(post.background.color);
  border: 1px solid $(post.border.color);

  -moz-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -webkit-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -goog-ms-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);

  -moz-border-radius: $(widget.border.radius);
  -webkit-border-radius: $(widget.border.radius);
  -goog-ms-border-radius: $(widget.border.radius);
  border-radius: $(widget.border.radius);
}

.date-outer:first-child {
  margin-top: 0;
}

.date-outer:last-child {
  margin-bottom: $(date.last.space.bottom);

  -moz-border-radius-bottomleft: $(date.last.border.radius.bottom);
  -moz-border-radius-bottomright: $(date.last.border.radius.bottom);
  -webkit-border-bottom-left-radius: $(date.last.border.radius.bottom);
  -webkit-border-bottom-right-radius: $(date.last.border.radius.bottom);
  -goog-ms-border-bottom-left-radius: $(date.last.border.radius.bottom);
  -goog-ms-border-bottom-right-radius: $(date.last.border.radius.bottom);
  border-bottom-left-radius: $(date.last.border.radius.bottom);
  border-bottom-right-radius: $(date.last.border.radius.bottom);
}

.date-posts {
  margin: 0 -$(separator.outdent);
  padding: 0 $(separator.outdent);

  clear: both;
}

.post-outer, .inline-ad {
  border-top: 1px solid $(post.border.bevel.color);

  margin: 0 -$(separator.outdent);
  padding: 15px $(separator.outdent);
}

.post-outer {
  padding-bottom: 10px;
}

.post-outer:first-child {
  padding-top: $(post.first.padding.top);
  border-top: none;
}

.post-outer:last-child, .inline-ad:last-child {
  border-bottom: none;
}

.post-body {
  position: relative;
}

.post-body img {
  padding: 8px;
  background: $(image.background.color);
  border: 1px solid $(image.border.color);

  -moz-box-shadow: 0 0 $(image.shadow.spread) rgba(0, 0, 0, .2);
  -webkit-box-shadow: 0 0 $(image.shadow.spread) rgba(0, 0, 0, .2);
  box-shadow: 0 0 $(image.shadow.spread) rgba(0, 0, 0, .2);

  -moz-border-radius: $(image.border.radius);
  -webkit-border-radius: $(image.border.radius);
  border-radius: $(image.border.radius);
}

h3.post-title, h4 {
  font: $(post.title.font);
  color: $(post.title.text.color);
}

h3.post-title a {
  font: $(post.title.font);
  color: $(post.title.text.color);
}

h3.post-title a:hover {
  color: $(link.hover.color);
  text-decoration: underline;
}

.post-header {
  margin: 0 0 1em;
}

.post-body {
  line-height: 1.4;
}

.post-outer h2 {
  color: $(body.text.color);
}

.post-footer {
  margin: 1.5em 0 0;
}

#blog-pager {
  padding: 15px;
  font-size: 120%;

  background-color: $(pager.background.color);
  border: 1px solid $(widget.border.color);

  -moz-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -webkit-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -goog-ms-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);

  -moz-border-radius: $(widget.border.radius);
  -webkit-border-radius: $(widget.border.radius);
  -goog-ms-border-radius: $(widget.border.radius);
  border-radius: $(widget.border.radius);

  -moz-border-radius-topleft: $(pager.border.radius.top);
  -moz-border-radius-topright: $(pager.border.radius.top);
  -webkit-border-top-left-radius: $(pager.border.radius.top);
  -webkit-border-top-right-radius: $(pager.border.radius.top);
  -goog-ms-border-top-left-radius: $(pager.border.radius.top);
  -goog-ms-border-top-right-radius: $(pager.border.radius.top);
  border-top-left-radius: $(pager.border.radius.top);
  border-top-right-radius-topright: $(pager.border.radius.top);

  margin-top: $(pager.space.top);
}

.blog-feeds, .post-feeds {
  margin: 1em 0;
  text-align: center;
  color: $(feed.text.color);
}

.blog-feeds a, .post-feeds a {
  color: $(feed.link.color);
}

.blog-feeds a:visited, .post-feeds a:visited {
  color: $(feed.link.visited.color);
}

.blog-feeds a:hover, .post-feeds a:hover {
  color: $(feed.link.hover.color);
}

.post-outer .comments {
  margin-top: 2em;
}

/* Comments
----------------------------------------------- */
.comments .comments-content .icon.blog-author {
  background-repeat: no-repeat;
  background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAALEgAACxIB0t1+/AAAAAd0SU1FB9sLFwMeCjjhcOMAAAD+SURBVDjLtZSvTgNBEIe/WRRnm3U8RC1neQdsm1zSBIU9VVF1FkUguQQsD9ITmD7ECZIJSE4OZo9stoVjC/zc7ky+zH9hXwVwDpTAWWLrgS3QAe8AZgaAJI5zYAmc8r0G4AHYHQKVwII8PZrZFsBFkeRCABYiMh9BRUhnSkPTNCtVXYXURi1FpBDgArj8QU1eVXUzfnjv7yP7kwu1mYrkWlU33vs1QNu2qU8pwN0UpKoqokjWwCztrMuBhEhmh8bD5UDqur75asbcX0BGUB9/HAMB+r32hznJgXy2v0sGLBcyAJ1EK3LFcbo1s91JeLwAbwGYu7TP/3ZGfnXYPgAVNngtqatUNgAAAABJRU5ErkJggg==);
}

.comments .comments-content .loadmore a {
  border-top: 1px solid $(tabs.border.color);
  border-bottom: 1px solid $(tabs.border.color);
}

.comments .continue {
  border-top: 2px solid $(tabs.border.color);
}

/* Footer
----------------------------------------------- */
.footer-outer {
  margin: -$(shadow.spread) 0 -1px;
  padding: $(shadow.spread) 0 0;
  color: $(footer.text.color);
  overflow: hidden;
}

.footer-fauxborder-left {
  border-top: 1px solid $(widget.border.color);
  background: $(footer.background.color) $(footer.background.gradient) repeat scroll 0 0;

  -moz-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -webkit-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  -goog-ms-box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);
  box-shadow: 0 0 $(shadow.spread) rgba(0, 0, 0, .2);

  margin: 0 -$(shadow.spread);
}

/* Mobile
----------------------------------------------- */
body.mobile {
  background-size: $(mobile.background.size);
}

.mobile .body-fauxcolumn-outer {
  background: $(mobile.background.overlay);
}

*+html body.mobile .main-inner .column-center-inner {
  margin-top: 0;
}

.mobile .main-inner .widget {
  padding: 0 0 15px;
}

.mobile .main-inner .widget h2 + div,
.mobile .footer-inner .widget h2 + div {
  border-top: none;
  padding-top: 0;
}

.mobile .footer-inner .widget h2 {
  padding: 0.5em 0;
  border-bottom: none;
}

.mobile .main-inner .widget .widget-content {
  margin: 0;
  padding: 7px 0 0;
}

.mobile .main-inner .widget ul,
.mobile .main-inner .widget #ArchiveList ul.flat {
  margin: 0 -15px 0;
}

.mobile .main-inner .widget h2.date-header {
  $(date.side): 0;
}

.mobile .date-header span {
  padding: 0.4em 0;
}

.mobile .date-outer:first-child {
  margin-bottom: 0;
  border: 1px solid $(post.border.color);

  -moz-border-radius-topleft: $(date.first.border.radius.top);
  -moz-border-radius-topright: $(date.first.border.radius.top);
  -webkit-border-top-left-radius: $(date.first.border.radius.top);
  -webkit-border-top-right-radius: $(date.first.border.radius.top);
  -goog-ms-border-top-left-radius: $(date.first.border.radius.top);
  -goog-ms-border-top-right-radius: $(date.first.border.radius.top);
  border-top-left-radius: $(date.first.border.radius.top);
  border-top-right-radius: $(date.first.border.radius.top);
}

.mobile .date-outer {
  border-color: $(post.border.color);
  border-width: 0 1px 1px;
}

.mobile .date-outer:last-child {
  margin-bottom: 0;
}

.mobile .main-inner {
  padding: 0;
}

.mobile .header-inner .section {
  margin: 0;
}

.mobile .blog-posts {
  padding: 0 10px;
}

.mobile .post-outer, .mobile .inline-ad {
  padding: 5px 0;
}

.mobile .tabs-inner .section {
  margin: 0 10px;
}

.mobile .main-inner .widget h2 {
  margin: 0;
  padding: 0;
}

.mobile .main-inner .widget h2.date-header span {
  padding: 0;
}

.mobile .main-inner .widget .widget-content {
  margin: 0;
  padding: 7px 0 0;
}

.mobile #blog-pager {
  border: 1px solid transparent;
  background: $(footer.background.color) $(footer.background.gradient) repeat scroll 0 0;
}

.mobile .main-inner .column-left-inner,
.mobile .main-inner .column-right-inner {
  background: $(widget.outer.background.color) $(widget.outer.background.gradient) repeat 0 0;

  -moz-box-shadow: none;
  -webkit-box-shadow: none;
  -goog-ms-box-shadow: none;
  box-shadow: none;
}

.mobile .date-posts {
  margin: 0;
  padding: 0;
}

.mobile .footer-fauxborder-left {
  margin: 0;
  border-top: inherit;
}

.mobile .main-inner .section:last-child .Blog:last-child {
  margin-bottom: 0;
}

.mobile-index-contents {
  color: $(body.text.color);
}

.mobile .mobile-link-button {
  background: $(link.color) $(tabs.background.gradient) repeat scroll 0 0;
}

.mobile-link-button a:link, .mobile-link-button a:visited {
  color: $(mobile.button.color);
}

.mobile .tabs-inner .PageList .widget-content {
  background: transparent;
  border-top: 1px solid;
  border-color: $(tabs.border.color);
  color: $(tabs.text.color);
}

.mobile .tabs-inner .PageList .widget-content .pagelist-arrow {
  border-$startSide: 1px solid $(tabs.border.color);
}
]]></b:skin>

    <b:template-skin>
      <b:variable default='960px' name='content.width' type='length' value='960px'/>
      <b:variable default='0' name='main.column.left.width' type='length' value='0px'/>
      <b:variable default='310px' name='main.column.right.width' type='length' value='310px'/>

      <![CDATA[
      body {
        min-width: $(content.width);
      }

      .content-outer, .content-fauxcolumn-outer, .region-inner {
        min-width: $(content.width);
        max-width: $(content.width);
        _width: $(content.width);
      }

      .main-inner .columns {
        padding-left: $(main.column.left.width);
        padding-right: $(main.column.right.width);
      }

      .main-inner .fauxcolumn-center-outer {
        left: $(main.column.left.width);
        right: $(main.column.right.width);
        /* IE6 does not respect left and right together */
        _width: expression(this.parentNode.offsetWidth -
            parseInt("$(main.column.left.width)") -
            parseInt("$(main.column.right.width)") + 'px');
      }

      .main-inner .fauxcolumn-left-outer {
        width: $(main.column.left.width);
      }

      .main-inner .fauxcolumn-right-outer {
        width: $(main.column.right.width);
      }

      .main-inner .column-left-outer {
        width: $(main.column.left.width);
        right: 100%;
        margin-left: -$(main.column.left.width);
      }

      .main-inner .column-right-outer {
        width: $(main.column.right.width);
        margin-right: -$(main.column.right.width);
      }

      #layout {
        min-width: 0;
      }

      #layout .content-outer {
        min-width: 0;
        width: 800px;
      }

      #layout .region-inner {
        min-width: 0;
        width: auto;
      }
      ]]>
    </b:template-skin>
  </head>

  <body expr:class='&quot;loading&quot; + data:blog.mobileClass'>
  <div class='body-fauxcolumns'>
    <div class='fauxcolumn-outer body-fauxcolumn-outer'>
    <div class='cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left'>
    <div class='fauxborder-right'/>
    <div class='fauxcolumn-inner'>
    </div>
    </div>
    <div class='cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
  </div>

  <div class='content'>
  <div class='content-fauxcolumns'>
    <div class='fauxcolumn-outer content-fauxcolumn-outer'>
    <div class='cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left'>
    <div class='fauxborder-right'/>
    <div class='fauxcolumn-inner'>
    </div>
    </div>
    <div class='cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
  </div>

  <div class='content-outer'>
  <div class='content-cap-top cap-top'>
    <div class='cap-left'/>
    <div class='cap-right'/>
  </div>
  <div class='fauxborder-left content-fauxborder-left'>
  <div class='fauxborder-right content-fauxborder-right'/>
  <div class='content-inner'>

    <header>
    <div class='header-outer'>
    <div class='header-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left header-fauxborder-left'>
    <div class='fauxborder-right header-fauxborder-right'/>
    <div class='region-inner header-inner'>
      <b:section class='header' id='header' maxwidgets='1' showaddelement='no'>
<b:widget id='Header1' locked='true' title='Boy vs Girl Photography (Header)' type='Header'/>
</b:section>
    </div>
    </div>
    <div class='header-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
    </header>

    <div class='tabs-outer'>
    <div class='tabs-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left tabs-fauxborder-left'>
    <div class='fauxborder-right tabs-fauxborder-right'/>
    <div class='region-inner tabs-inner'>
      <b:section class='tabs' id='crosscol' maxwidgets='1' showaddelement='yes'/>
      <b:section class='tabs' id='crosscol-overflow' showaddelement='no'/>
    </div>
    </div>
    <div class='tabs-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>

    <div class='main-outer'>
    <div class='main-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>

    <div class='fauxborder-left main-fauxborder-left'>
    <div class='fauxborder-right main-fauxborder-right'/>
    <div class='region-inner main-inner'>

      <div class='columns fauxcolumns'>

        <div class='fauxcolumn-outer fauxcolumn-center-outer'>
        <div class='cap-top'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        <div class='fauxborder-left'>
        <div class='fauxborder-right'/>
        <div class='fauxcolumn-inner'>
        </div>
        </div>
        <div class='cap-bottom'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        </div>

        <div class='fauxcolumn-outer fauxcolumn-left-outer'>
        <div class='cap-top'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        <div class='fauxborder-left'>
        <div class='fauxborder-right'/>
        <div class='fauxcolumn-inner'>
        </div>
        </div>
        <div class='cap-bottom'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        </div>

        <div class='fauxcolumn-outer fauxcolumn-right-outer'>
        <div class='cap-top'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        <div class='fauxborder-left'>
        <div class='fauxborder-right'/>
        <div class='fauxcolumn-inner'>
        </div>
        </div>
        <div class='cap-bottom'>
          <div class='cap-left'/>
          <div class='cap-right'/>
        </div>
        </div>

        <!-- corrects IE6 width calculation -->
        <div class='columns-inner'>

        <div class='column-center-outer'>
        <div class='column-center-inner'>
          <b:section class='main' id='main' showaddelement='no'>
<b:widget id='Blog1' locked='true' title='Blog Posts' type='Blog'/>
</b:section>
        </div>
        </div>

        <div class='column-left-outer'>
        <div class='column-left-inner'>
          <aside>
          <macro:include id='main-column-left-sections' name='sections'>
            <macro:param default='0' name='num' value='0'/>
            <macro:param default='sidebar-left' name='idPrefix'/>
            <macro:param default='sidebar' name='class'/>
            <macro:param default='true' name='includeBottom'/>
          </macro:include>
          </aside>
        </div>
        </div>

        <div class='column-right-outer'>
        <div class='column-right-inner'>
          <aside>
          <macro:include id='main-column-right-sections' name='sections'>
            <macro:param default='2' name='num' value='1'/>
            <macro:param default='sidebar-right' name='idPrefix'/>
            <macro:param default='sidebar' name='class'/>
            <macro:param default='true' name='includeBottom'/>
          </macro:include>
          </aside>
        </div>
        </div>

        </div>

        <div style='clear: both'/>
      <!-- columns -->
      </div>

    <!-- main -->
    </div>
    </div>
    <div class='main-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>

    <footer>
    <div class='footer-outer'>
    <div class='footer-cap-top cap-top'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    <div class='fauxborder-left footer-fauxborder-left'>
    <div class='fauxborder-right footer-fauxborder-right'/>
    <div class='region-inner footer-inner'>
      <macro:include id='footer-sections' name='sections'>
        <macro:param default='2' name='num'/>
        <macro:param default='footer' name='idPrefix'/>
        <macro:param default='foot' name='class'/>
        <macro:param default='false' name='includeBottom'/>
      </macro:include>
      <!-- outside of the include in order to lock Attribution widget -->
      <b:section class='foot' id='footer-3' showaddelement='no'>
<b:widget id='Attribution1' locked='true' title='' type='Attribution'/>
</b:section>
    </div>
    </div>
    <div class='footer-cap-bottom cap-bottom'>
      <div class='cap-left'/>
      <div class='cap-right'/>
    </div>
    </div>
    </footer>

  <!-- content -->
  </div>
  </div>
  <div class='content-cap-bottom cap-bottom'>
    <div class='cap-left'/>
    <div class='cap-right'/>
  </div>
  </div>
  </div>

  <script type='text/javascript'>
    window.setTimeout(function() {
        document.body.className = document.body.className.replace(&#39;loading&#39;, &#39;&#39;);
      }, 10);
  </script>
  <b:include data='blog' name='google-analytics'/>
</body>

<macro:includable id='sections' var='col'>
  <macro:if cond='data:col.num == 0'>
  <macro:else/>
    <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-1&quot;' preferred='yes' showaddelement='yes'/>

    <macro:if cond='data:col.num &gt;= 2'>
      <table border='0' cellpadding='0' cellspacing='0' mexpr:class='&quot;section-columns columns-&quot; + data:col.num'>
      <tbody>
      <tr>
        <td class='first columns-cell'>
          <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-1&quot;'/>
        </td>

        <td class='columns-cell'>
          <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-2&quot;'/>
        </td>

        <macro:if cond='data:col.num &gt;= 3'>
          <td class='columns-cell'>
            <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-3&quot;'/>
          </td>
        </macro:if>

        <macro:if cond='data:col.num &gt;= 4'>
          <td class='columns-cell'>
            <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-2-4&quot;'/>
          </td>
        </macro:if>
      </tr>
      </tbody>
      </table>

      <macro:if cond='data:col.includeBottom'>
        <b:section mexpr:class='data:col.class' mexpr:id='data:col.idPrefix + &quot;-3&quot;' showaddelement='no'/>
      </macro:if>
    </macro:if>
  </macro:if>
</macro:includable>

<b:section-contents id='sidebar-right-1'>
<b:widget id='Followers1' locked='false' title='Followers' type='Followers'/>
<b:widget id='BlogArchive1' locked='false' title='Blog Archive' type='BlogArchive'/>
<b:widget id='Profile1' locked='false' title='About Me' type='Profile'/>
</b:section-contents><b:section-contents id='footer-1'/><b:section-contents id='footer-2-1'/><b:section-contents id='footer-2-2'/></html>