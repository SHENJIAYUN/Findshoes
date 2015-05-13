<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>拼图后台管理-后台管理</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon" />
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon" />
  </head>
  
  <body>
<div class="lefter">
    <div class="logo"><a style="font-size:large" href="http://www.pintuer.com" target="_blank"><strong>女鞋后台管理系统</strong></a></div>
</div>
<div class="righter nav-navicon" id="admin-nav">
    <div class="mainer">
        <div class="admin-navbar">
            <span class="float-right">
            	<a class="button button-little bg-main" href="http://www.pintuer.com" target="_blank">前台首页</a>
                <a class="button button-little bg-yellow" href="login.html">注销登录</a>
            </span>
            <ul class="nav nav-inline admin-nav">
                <li class="active"><a href="index.jsp" class="icon-home"> 开始</a>
                    <ul><li><a href="system.jsp">系统设置</a></li><li><a href="content.html">首页管理</a></li><li><a href="shoes-search.jsp">鞋子管理</a></li><li class="active"><!-- <a href="#">分类条件管理</a> --></li><li><a href="#">文章管理</a></li><li><a href="article.jsp">商店管理</a></li><li><a href="users-search.jsp">用户管理</a></li></ul>
                </li>
                <li><a href="system.jsp" class="icon-cog"> 系统</a>
            		<ul><li><a href="#">全局设置</a></li><li class="active"><a href="#">系统设置</a></li><li><a href="#">会员设置</a></li><li><a href="#">积分设置</a></li></ul>
                </li>
               <!--  <li><a href="home.jsp" class="icon-file-text"> 首页</a> -->
				<!-- 	<ul><li><a href="#">轮播图管理</a></li><li class="active"><a href="#">人气热款管理</a></li><li><a href="#">品牌新款管理</a></li></ul> -->
                <li><a href="shoes-search.jsp" class="icon-file-text"> 鞋子</a>
					<ul><li><a href="#">鞋子搜索</a></li><li class="active"><a href="#">添加</a></li><li><a href="#">批量添加</a></li><li><a href="#">链接管理</a></li></ul>
                    
      <!--           <li><a href="classify.jsp" class="icon-file-text"> 分类条件</a>
					<ul><li>条件管理</li><li class="active"><a href="#">品牌</a></li><li><a href="#">流行元素</a></li><li><a href="#">选购热点</a></li><li><a href="#">场合</a></li><li><a href="#">风格</a></li><li><a href="#">皮质特征</a></li><li><a href="#">鞋底材质</a></li></ul> -->
                    
                <li><a href="article.jsp" class="icon-file-text"> 文章</a>
					<ul><li><a href="#">添加内容</a></li><li class="active"><a href="#">内容管理</a></li><li><a href="#">分类设置</a></li><li><a href="#">链接管理</a></li></ul>
                    
               <li><a href="content.html" class="icon-file-text"> 商店</a>
					<ul><li><a href="#">添加内容</a></li><li class="active"><a href="#">内容管理</a></li><li><a href="#">分类设置</a></li><li><a href="#">链接管理</a></li></ul>
                    
               <li><a href="content.html" class="icon-file-text"> 用户</a>
					<ul><li><a href="#">添加内容</a></li><li class="active"><a href="#">内容管理</a></li><li><a href="#">分类设置</a></li><li><a href="#">链接管理</a></li></ul>
            </ul>
        </div>
        <div class="admin-bread">
            <span>您好，admin，欢迎您的光临。</span>
            <ul class="bread">
                <li><a href="index.html" class="icon-home"> 开始</a></li>
                <li>后台首页</li>
            </ul>
        </div>
    </div>
</div>

<div class="admin">
	<div class="line-big">
    	<div class="xm3">
        	<div class="panel border-back">
            	<div class="panel-body text-center">
                	<img src="images/face.jpg" width="120" class="radius-circle" /><br />
                    admin
                </div>
                <div class="panel-foot bg-back border-back">您好，admin，这是您第100次登录，上次登录为2014-10-1。</div>
            </div>
            <br />
        	<div class="panel">
            	<div class="panel-head"><strong>站点统计</strong></div>
                <ul class="list-group">
                	<li><span class="float-right badge bg-red">88</span><span class="icon-user"></span> 会员</li>
                    <li><span class="float-right badge bg-main">828</span><span class="icon-file"></span> 鞋子</li>
                    <li><span class="float-right badge bg-main">828</span><span class="icon-shopping-cart"></span> 商店</li>
                    <li><span class="float-right badge bg-main">828</span><span class="icon-file-text"></span> 文章</li>
                    <li><span class="float-right badge bg-main">828</span><span class="icon-database"></span> 数据库</li>
                </ul>
            </div>
            <br />
        </div>
        <div class="xm9">
        	<div class="alert alert-yellow"><span class="close"></span><strong>注意：</strong>您有5条未读信息，<a href="#">点击查看</a>。</div>
            <div class="alert">

            </div>

        </div>
    </div>
    <p class="text-right text-gray"></p>
    
    <div class="clearfix text-center">

        <br /><br />
    </div>
    <br />
</div>

<div class="hidden"><script src="http://s4.cnzz.com/stat.php?id=5952475&web_id=5952475" language="JavaScript"></script></div>
</body>
</html>
