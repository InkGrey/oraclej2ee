<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>

<!DOCTYPE html>
<!--[if lte IE 8]> <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<title>Travel | SearchResult</title>
	
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="icon" type="image/png" href="../image/favicon.ico">
	<link rel="stylesheet" type="text/css" href="../CSS/CSSforBlog/style.css" media="screen">
	<link rel="stylesheet" type="text/css" href="../CSS/CSSforfancybox/jquery.fancybox.css" media="screen"/>
	 <link rel="stylesheet" type="text/css" href="../CSS/CSSforThemeChanger/colorpicker.css">
	<link rel="stylesheet" type="text/css" href="../CSS/CSSforThemeChanger/themeChanger.css">
	<!-- HTML5 Shiv + detect touch events -->
	<script src="../JS/JSforBlog&Home&Show&Map/modernizr.custom.js"></script>
 
</head>
<body class="liquid light">

<div id="wrapper">

	<!-- ***************** - Header Top - ***************** -->	
	
	<div id="header-top" class="clearfix">
		
		<section class="container clearfix">
			
			<div class="one-half">
				
				<ul class="contact-info clearfix">
					<li class="phone">+131 66 232 160</li>
					<li class="email"><a href="mailto:info@companyname.com">1090096672@qq.com</a></li>
				</ul> 	
				
			</div>
			
			<div  class="one-half last">
				<ul data-description="相关社交网络链接:" class="social-links clearfix">
					<li data-tooltip="LinkedIn" class="linked"><a href="#">LinkedIn</a></li>
					<li data-tooltip="Flickr" class="flickr"><a href="#">Flickr</a></li>
					<li data-tooltip="Twitter" class="twitter"><a href="#">Twitter</a></li>
					<li data-tooltip="Facebook" class="facebook"><a href="#">Facebook</a></li>
					<li data-tooltip="Rss" class="rss"><a href="#">Rss</a></li>
				</ul><!--/ .social-links-->	
			</div><!--/ .one-fourth.last-->
			
		</section><!--/ .container-->
		
		<a href="#" id="more"></a>
		
	</div><!--/ #header-top-->
	
	<!-- ***************** - END Header Top - ***************** -->

	<!-- ***************** - Container - ***************** -->
	
	<section class="container">

		<!-- ***************** - Header - ***************** -->
		
		<header id="header" class="clearfix">
			
			<div id="logo">
				<h1><a href="index.html">Travel</a></h1>
				<div class="slogan"><span>渺苍山暮雪，携手共游</span></div><!--/ .slogan-->
			</div><!--/ #logo-->
			
			<nav id="navigation" class="navigation">
				<ul>
					<li class="current"><a href="JS/Home.jsp">主页</a></li>
					<li><a href="JS/Blog.jsp">随性</a>
					<li><a href="JS/SearchResult.jsp">搜寻结果</a></li>
					<li><a href="JS/Map.jsp">写信</a></li>
					<li><a href="JS/Login.jsp">退出</a></li>
				</ul>
			</nav><!--/ #navigation-->
			
		</header><!--/ #header-->
		
		<!-- **************** - END Header - **************** -->
		
		<div class="content-wrapper sbr clearfix">
			
			
			<div class="page-header clearfix">
				
				<h1 class="alignleft">搜索结果</h1>
				
				<div class="search-container">
					<form id="search" action="SearchResult.html">
						<input placeholder="Search" type="text" />
						 <button type="submit" ></button> 
					</form><!--/ #search-->
				</div><!--/ .search-container-->
				
			</div><!--/ .page-header-->
			
			
			<section id="content">
				
				<article class="post-item clearfix">
					
					<a class="single-image picture-icon" href="images/fullscreen/big-img-12.jpg">
						<img class="entry-image" src="../image/temp/blog_img_1.jpg" alt="" />
					</a>
					
					<div class="image-title clearfix">
						<h2  name="country_name">
							<span class="post-type picture"></span>
							 中国
						</h2>
					</div><!--/ .image-title-->
					
					<div class="one-sixth">

						<div class="meta-entry">
							<a href="#" class="date"><span>03/29/2012</span></a>
							<a href="#" class="author"><span>Admin</span></a>
							<span class="category">
								<a href="#">国家介绍</a><br/>
								<a href="#">方位</a><br/>
								<a href="#">首都</a><br/>
                                <a href="#">人口</a><br/>
                                <a href="">机场</a><br/>
                                <a href="">周邻国</a>
                                <a href="">语言</a>
                                <a href="">宗教</a>
							</span>
							<a href="#" class="comments"><span>12 comments</span></a>
						</div><!--/ .meta-entry-->

						<ul data-description="Share this:" class="social-links">
							<li data-tooltip="Pinterest" class="pinterest"><a href="#">Pinterest</a></li>
							<li data-tooltip="Google+" class="google"><a href="#">Google+</a></li>
							<li data-tooltip="Twitter" class="twitter"><a href="#">Twitter</a></li>
							<li data-tooltip="Facebook" class="facebook"><a href="#">Facebook</a></li>
						</ul><!--/ .social-links-->	

					</div><!--/ .one-sixth-->
					
					<div class="entry-body">
						<p name="country_introduction">
							 
						</p>
						
						<p name="coutry_location">
							 
						</p>
						
						<blockquote class="quote-text" name="country_capital_introduction">
							 
						</blockquote>
						
						<p name="country_population">
							 
						</p>
                        <p name="country_airport">
							 
						</p>
						<p name="country_neighors">
							 
						</p>
                        <p name="country_language">
							 
						</p>
                        <p name="country_region">
							 
						</p>
						
						
					</div><!--/ .entry-body-->
					
				</article><!--/ .post-item-->
				
		
				<div class="page-title clearfix">

					<div class="pagination">
						<a href="#" class="prev-project">Previous Post</a><!--/ .prev-project-->
						<a href="#" class="next-project">Next Post</a><!--/ .next-project-->
					</div><!--/ .pagination-->

				</div><!--/ .page-title-->
				
				
				 
				
				<section id="respond">

					<h3 class="content-title">发表评论</h3>
					
					<p>请秉着国际友好的态度</p>

					<form method="post" class="comments-form">

						<fieldset class="input-fieldset">
							<p class="input-block"><input type="text" name="name" value="" placeholder="Name (required)" id="comment-name" required></p>
							<p class="input-block"><input type="text" name="email" value="" placeholder="Email (required)" id="comment-email" required></p>
							<p class="input-block"><input type="text" name="website" value="" placeholder="Website" id="comment-website"></p>
						</fieldset>
						
						<fieldset class="textarea-block">
							<textarea name="message" placeholder="Message (required)" id="comment-message" required></textarea>
						</fieldset>

						<button class="button-style-2 medium" type="submit">提交评论</button>

						<div class="clear"></div>

					</form><!--/ .comments-form-->

				</section><!--/ #respond-->
				
			</section><!--/ #content-->
			
			
			<!-- ********** - Sidebar - ************ -->
			
			<aside id="sidebar">
				
				<div class="widget">
					
					<h1 class="widget-title">信息</h1>
                    
 
					<ul class="feature-menu">
						       <li><a href="#">国家介绍</a></li>
						       <li><a href="#">方位</a> </li>
							   <li><a href="#">首都</a> </li>
                               <li> <a href="#">人口</a> </li>
                               <li><a href="">机场</a> </li>
                               <li><a href="">周邻国</a></li>
                               <li><a href="">语言</a></li>
                               <li><a href="">宗教</a></li>
					</ul><!--/ .feature-menu-->	
					
				</div><!--/ .widget-->
				
				
				<div class="widget">
					
					
					<!-- *************** - Tabs Container - *************** -->
					
					<div class="aside-tabs">
						
						 
						<div class="tabs-container">

							<div class="tab-content" id="tab4">
								<ul class="small-thumb">
									<li>
										<a href="#"><img class="alignleft" src="../image/temp/pic_thumb_1.jpg" alt="" /></a>
										<div class="entry">
											<h6><a href="#"> 国旗</a></h6>
											<div class="entry-meta">
												<a class="post-date" href="#"><span>03/29/2012</span></a>
											</div><!--/ .entry-meta-->	
										</div><!--/ .entry-->
										<div class="clear"></div>
									</li>
									 
									 
								</ul>
							</div><!--/ #tab4-->

						</div><!--/ .tabs-container -->	
					</div><!--/ .aside-tabs-->
		
					<!-- ************** - end Tabs Container - ************** -->	
					
				</div><!--/ .widget-->
				
				
				<div class="widget">
					
					<h1 class="content-title">最新资讯</h1>
					
					<ul class="latest">
						<li>
							<a href="#">
								<img alt="" src="../image/temp/220px_1.jpg">
								<h3 class="title">九寨沟</h3>
								<span class="desc"> </span>
							</a>		
						</li>
						<li>
							<a href="#">
								<img alt="" src="../image/temp/220px_2.jpg">
								<h3 class="title"> 终南山</h3>
								<span class="desc"> </span>
							</a>		
						</li>
						<li>
							<a href="#">
								<img alt="" src="../image/temp/220px_3.jpg">
								<h3 class="title"> 长白山</h3>
								<span class="desc"> </span>
							</a>		
						</li>
					</ul>
					<div class="latest-controls">
						<a href="#" id="prev"></a>
						<a href="#" id="next"></a>
					</div>

				  
				
			</aside><!--/ #sidebar-->
			
			<!-- ********** - END Sidebar - ************ -->
			
			
		</div><!--/ .content-wrapper-->


		<!-- ************* - Main Footer - *************** -->
		
		<footer id="footer" class="clearfix">
			
			<div class="one-half">
				
				 
				
				<div class="copyright">&copy; 2012 Lucent. All rights reserved.</div><!--/ .copyright-->
				
			</div><!--/ .one-half-->
			
			<div class="one-half last">
				
				<ul data-description="Stay in touch via social networks:" class="social-links">
					<li data-tooltip="LinkedIn" class="linked"><a href="#">LinkedIn</a></li>
					<li data-tooltip="Flickr" class="flickr"><a href="#">Flickr</a></li>
					<li data-tooltip="Twitter" class="twitter"><a href="#">Twitter</a></li>
					<li data-tooltip="Facebook" class="facebook"><a href="#">Facebook</a></li>
					<li data-tooltip="Rss" class="rss"><a href="#">Rss</a></li>
				</ul><!--/ .social-links-->	
				
			</div><!--/ .one-half.last-->
			
		</footer>
		
		<!-- ************ - END Footer - ************ -->	

		
	</section><!--/ .container-->
	
	<!-- *************** - END Container - *************** -->

	
	<!-- ************ - Footer Bottom - ************ -->
	
	<footer id="footer-bottom">
		
		<a href="#" id="footer-more"></a>
		
		<section class="container panel clearfix">
			
			<div class="one-half">
				<div class="widget-text">
					<h1>关于我们</h1>
					<p>
						 为了完成J2EE期末作业，我们设计这个旅游指南网站。<br/>
                         希望大家都取的好成绩
					</p>
				</div><!--/ .widget-text-->
			</div><!--/ .one-half-->
			
			<div class="one-fourth">
				<div class="widget-flickr">
					<h1>美图览览</h1>
					<ul id="flickr-badge" class="clearfix"></ul>
				</div><!--/ .widget-flickr-->
			</div><!--/ .one-fourth-->
			
			<div class="one-fourth last">
				<div id="signup">
					<h1>加入我们的团队</h1>
					<form method="post" action="/" id="signup_form">
						<fieldset>
							<label for="s-email">我们会通过邮箱联系你</label>
							<input type="text" placeholder="输入邮箱" name="s-email" id="s-email"/>
							<input type="submit" name="signup_submit" id="signup_submit" value="提交" />
						</fieldset>
					</form><!--/ #signup_form-->
				</div><!--/ #signup -->
			</div><!--/ .one-fourth.last-->
			
		</section><!--/ .container-->
	</footer><!--/ #footer-bottom-->
	
	<!-- ************ - END Footer - ************ -->
	

</div><!--/ #wrapper-->
<script type="text/javascript" src="../../ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>!window.jQuery && document.write('<script src="../JS/JSforBlog&Home&Show&Map/jquery-1.7.1.min.js"><\/script>')</script>
<!--[if lt IE 9]>
	<script src="js/selectivizr-and-extra-selectors.min.js"></script>
	<script src="../../ie7-js.googlecode.com/svn/version/2.1(beta4)/IE8.js"></script>
<![endif]-->
<script src="../JS/JSforBlog&Home&Show&Map/respond.min.js"></script>
<script src="../JS/JSforBlog&Home&Show&Map/jquery.easing-1.3.min.js"></script>
<script src="../JS/JSforFancybox/jquery.fancybox.pack.js"></script>
<script src="../JS/JSforBlog&Home&Show&Map/jquery.cycle.all.min.js"></script>
 <script src="../JS/JSforBlog&Home&Show&Map/jquery.touchSwipe-1.2.5.min.js"></script>
 <script src="../JS/JSforBlog&Home&Show&Map/custom.js"></script>

<script src="../JS/themeChanger/JSforThemeChanger/colorpicker.js"></script>
<script src="../JS/themeChanger/JSforThemeChanger/themeChanger.js"></script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

