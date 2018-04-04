<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="error.jsp"%>
<%@ page import="bean.Province"%>
<%@ page import="dao.ProvinceDao"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>Weather Forecast</title>
    <meta charset="utf-8">
    <link rel="icon" href="http://dzyngiri.com/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="http://dzyngiri.com/favicon.png" type="image/x-icon" />
    <meta name="description" content="Codester is a free responsive Bootstrap template by Dzyngiri">
    <meta name="keywords" content="free, template, bootstrap, responsive">
    <meta name="author" content="Inbetwin Networks">
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/kwicks-slider.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/my.css" type="text/css" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/touchTouch.jquery.js"></script>
    <script type="text/javascript">if($(window).width()>1024){document.write("<"+"script src='js/jquery.preloader.js'></"+"script>");}	</script>
    <script language="javascript">
    function ale()
    {//这个基本没有什么说的，就是弹出一个提醒的对话框
    alert("对不起，您没有相应权限");
    window.navigate("home.jsp");  
    }
    </script>
    <script>
        jQuery(window).load(function() {
            $x = $(window).width();
            if($x > 1024)
            {
                jQuery("#content .row").preloader();    }

            jQuery('.magnifier').touchTouch();
            jQuery('.spinner').animate({'opacity':0},1000,'easeOutCubic',function (){jQuery(this).css('display','none')});
        });

    </script>

    <!--[if lt IE 8]>
    <div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>
    <![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!-->
    <!--<![endif]-->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="css/docs.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
    <![endif]-->

    <!--Google analytics code-->
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-29231762-1']);
        _gaq.push(['_setDomainName', 'dzyngiri.com']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
</head>

<body>
<div class="spinner"></div>
<!-- header start -->
<header>
    <div class="container clearfix">
        <div class="row">
            <div class="span12">
                <div class="navbar navbar_">
                    <div class="container">
                        <h1 class="brand brand_"><a href="UserIndex.jsp"><!--<span class="header1">Weather Forecast </span>--><img alt="" src="img/mine/icon.jpg"> </a></h1>
                        <a class="btn btn-navbar btn-navbar_" data-toggle="collapse" data-target=".nav-collapse_">Menu <span class="icon-bar"></span> </a>
                        <div class="nav-collapse nav-collapse_  collapse">
                            <ul class="nav sf-menu">
                                <li><a href="" onclick="ale()">用户管理</a></li>
                                <li><a href="UserWeatherModify.jsp">历史数据</a></li>
                                <li><a href="UserHadoop.jsp">数据分析</a></li>
                                <li class="sub-menu"><a >文件交换</a>
                                    <ul>
                                        <li><a href="UserUpLoad.jsp">文件上传</a></li>
                                        <li><a href="servlet/ListFileServlet">文件下载</a></li>
                                        <li><a href="UserProcess3.jsp">可读文档</a></li>
                                    </ul>
                                </li>
                                <li><a href="UserMessageboard.jsp">意见反馈</a></li>
                                <%String name=(String)session.getAttribute("name"); %>
                                <li><p3>欢迎，<%=name%></p3><button onclick="window.location.href='Logout.jsp'">退出</button> </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="bg-content">
    <div class="container">
        <div class="row">
            <div class="span12">
                <!-- slider -->
                <div class="flexslider">
                    <ul class="slides">
                        <li> <img src="img/mine/slide-1.jpg" alt="" > </li>
                        <li> <img src="img/mine/slide-2.jpg" alt="" > </li>
                        <li> <img src="img/mine/slide-3.jpg" alt="" > </li>
                        <li> <img src="img/mine/slide-4.jpg" alt="" > </li>
                        <li> <img src="img/mine/slide-5.jpg" alt="" > </li>
                    </ul>
                </div>
                <span id="responsiveFlag"></span>
                
            </div>
        </div>
    </div>

    <!-- content -->

    <div id="content" class="content-extra"><div class="ic"></div>
        <div class="row-1">
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <h4>Our Work</h4>
                    </article>
                    <div class="clear"></div>
                    <ul class="portfolio clearfix">
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/work1.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/work2.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/work3.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/work4.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/graph1.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/graph2.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/graph3.jpg"></a></li>
                        <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/mine/graph4.jpg"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row-2">
            <div class="container">
                <h3>专业高效的气象服务</h3>
                <h3>使用简单，操作方便，结果易于理解，适用于更广泛的人群!</h3>
                <p>数据来源可靠、准确，提供高准度的个性化服务，为您的地区提供更加完善的报告</p>
                <a href="Listener.jsp" class="btn btn-1">监听器</a>
            </div>
        </div>
        <div class="row-1">
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <h4>From blog</h4>
                    </article>
                    <ul class="thumbnails thumbnails-1">
                        <li class="span3">
                            <div class="thumbnail thumbnail-1">
                                <h3>Web Design</h3>
                                <img  src="img/mine/graph5.jpg" alt="">
                                <section>
                                    <a href="#"><h3>At vero eos et accusamus et iusto </h3></a>
                                    <div class="meta">
                                        <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                                        <div class="name-author"><i class="icon-user"></i> <a href="#">Admin</a></div>
                                        <a href="#" class="comments"><i class="icon-comment"></i> 7 comments</a>
                                    </div>
                                    <div class="clear"></div>
                                    <p>Vivamus sollicitudin libero auctor arcu pulvinar commodo.</p>
                                    <a href="#" class="btn btn-1">Read More</a> </section>
                            </div>
                        </li>
                        <li class="span3">
                            <div class="thumbnail thumbnail-1">
                                <h3>Graphics</h3>
                                <img  src="img/mine/graph6.jpg" alt="">
                                <section>
                                    <a href="#"><h3>Deleniti atque corrupti quos</h3></a>
                                    <div class="meta">
                                        <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                                        <div class="name-author"><i class="icon-user"></i> <a href="#">Admin</a></div>
                                        <a href="#" class="comments"><i class="icon-comment"></i> 4 comments</a>
                                    </div>
                                    <div class="clear"></div>
                                    <p>Vestibulum volutpat urna sed sapien vehicula varius.</p>
                                    <a href="#" class="btn btn-1">Read More</a> </section>
                            </div>
                        </li>
                        <li class="span3">
                            <div class="thumbnail thumbnail-1">
                                <h3>Social Media</h3>
                                <img  src="img/mine/graph7.jpg" alt="">
                                <section>
                                    <a href="#"><h3>Similique sunt in culpa qui officia</h3></a>
                                    <div class="meta">
                                        <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                                        <div class="name-author"><i class="icon-user"></i> <a href="#">Admin</a></div>
                                        <a href="#" class="comments"><i class="icon-comment"></i> 9 comments</a>
                                    </div>
                                    <div class="clear"></div>
                                    <p>Pellentesque mi justo, laoreet non bibendum non, auctor imperdiet eros.</p>
                                    <a href="#" class="btn btn-1">Read More</a> </section>
                            </div>
                        </li>
                        <li class="span3">
                            <div class="thumbnail thumbnail-1">
                                <h3 class="title-1 extra">Photography</h3>
                                <img  src="img/mine/graph8.jpg" alt="">
                                <section> <a href="#"><h3>Similique sunt in culpa qui officia</h3></a>
                                    <div class="meta">
                                        <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                                        <div class="name-author"><i class="icon-user"></i> <a href="#">Admin</a></div>
                                        <a href="#" class="comments"><i class="icon-comment"></i> 1 comment</a>
                                    </div>
                                    <div class="clear"></div>
                                    <p>Vestibulum volutpat urna sed sapien vehicula varius.</p>
                                    <a href="#" class="btn btn-1">Read More</a> </section>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <article class="span6">
                    <h3>Shortly about us</h3>
                    <div class="wrapper">
                        <figure class="img-indent"><img src="img/mine/us.jpg " alt="" /></figure>
                        <div class="inner-1 overflow extra">
                            <div class="txt-1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                我们是致力于通过大数据气象统计和数据分析，来给政府部门、社会组织和市民提供精准有效的气象预测和分析。
                                并提供精准的数据查询，方便广大学者和研究人员收集数据进行数据挖掘，同时提供最新的气象研究论文，开放讨论区，
                                支持广大气象爱好者进行科研交流。
                        </div>
                    </div>
                </article>
                <article class="span6">
                    <h3>Some quick links</h3>
                    <div class="wrapper">
                        <ul class="list list-pad">
                            <li><a href="#">Campaigns</a></li>
                            <li><a href="#">Portraits</a></li>
                            <li><a href="#">Fashion</a></li>
                            <li><a href="#">Fine Art</a></li>
                        </ul>
                        <ul class="list list-pad">
                            <li><a href="#">Campaigns</a></li>
                            <li><a href="#">Portraits</a></li>
                            <li><a href="#">Fashion</a></li>
                            <li><a href="#">Fine Art</a></li>
                        </ul>
                        <ul class="list list-pad">
                            <li><a href="#">Campaigns</a></li>
                            <li><a href="#">Portraits</a></li>
                            <li><a href="#">Fashion</a></li>
                            <li><a href="#">Fine Art</a></li>
                        </ul>
                        <ul class="list">
                            <li><a href="#">Advertising</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Love story</a></li>
                            <li><a href="#">Landscapes</a></li>
                        </ul>
                    </div>
                </article>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<footer>
    <div class="container clearfix">
        <ul class="list-social pull-right">
            <li><a class="icon-1" href="#"></a></li>
            <li><a class="icon-2" href="#"></a></li>
            <li><a class="icon-3" href="#"></a></li>
            <li><a class="icon-4" href="#"></a></li>
        </ul>
        <div class="privacy pull-left">&copy; 2017 | <a href="http://www.google.com">Title : Online Weather Forecast</a> | <a href="http://twitter.github.com/bootstrap/" target="_blank">Bootstrap</a> | Demo Illustrations by <a href="http://www.sdufe.edu.cn" target="_blank">Liuzhen Xingyao</a></div>
    </div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>