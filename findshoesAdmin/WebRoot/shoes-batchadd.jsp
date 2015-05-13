<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>女鞋后台管理-后台管理</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon" />
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon" />
    
    <link href="css/HttpUploader.css" type="text/css" rel="Stylesheet"/>
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/HttpUploader.js" charset="utf-8"></script>
    
    <style>
		.td-url{/*text-overflow:ellipsis;*/white-space:nowrap;overflow: hidden}
	</style>

    
</head>

<body>
<div class="lefter">
    <div class="logo"><a style="font-size:large" href="http://www.pintuer.com" target="_blank"><strong>女鞋后台管理系统</strong></a></div>
</div>
<div class="righter nav-navicon" id="admin-nav">
    <div class="mainer">
        <div class="admin-navbar">
            <span class="float-right">
            	<a class="button button-little bg-main" href="#">前台首页</a>
                <a class="button button-little bg-yellow" href="login.html">注销登录</a>
            </span>
            <ul class="nav nav-inline admin-nav">
                <li><a href="index.jsp" class="icon-home"> 开始</a>
                <li><a href="system.jsp" class="icon-home"> 系统</a>
                <li><a href="home.jsp" class="icon-file-text"> 首页</a>
                <li class="active"><a href="shoes-search.jsp" class="icon-cog"> 鞋子</a>
            		<ul><li><a href="shoes-search.jsp">鞋子搜索</a></li><li  class="active"><a href="shoes-add.jsp">添加</a></li><li><a href="shoes-batchadd.jsp">批量添加</a></li></ul>
                </li>
                <li><a href="classify.jsp" class="icon-file-text"> 分类条件</a> </li>
                <li><a href="article.jsp" class="icon-file-text"> 文章</a></li>
                <li><a href="#" class="icon-user"> 商店</a></li>
                <li><a href="#" class="icon-file">用户</a></li>
            </ul>
        </div>
        <div class="admin-bread">
            <span>您好，admin，欢迎您的光临。</span>
            <ul class="bread">
                <li><a href="index.html" class="icon-home"> 开始</a></li>
                <li><a href="system.html">鞋子</a></li>
                <li>批量添加</li>
            </ul>
        </div>
    </div>
</div>

<div class="admin">
 	 <strong>批量添加</strong>
    <div class="tab" style="width:500px">
      <div class="tab-head" style="width:500px"> 
   	   <div class="tab-body" style="width:500px">
        <br /> 
         <div class="tab-panel active" id="tab-set">
    		
            <div>
				<a href="http://www.ncmem.com/products/image-uploader/demo/images.aspx" target="_blank">查看添加的文件列表</a></div>
				<input   type="button" value="批量添加文件" onclick="UploadLocaFile()"/>

	<!--<input type="button" value="在D盘创建test文件夹" onclick="testCreateFolder()"/>-->
 
         </div>
        
         </div>
      </div>
      
   </div>
  

  
       
  

<div class="hidden"><script src="http://s4.cnzz.com/stat.php?id=5952475&web_id=5952475" language="JavaScript"></script></div>
   	<!-- <input type="button" value="验证本地文件是否存在" onclick="testExistFile()"/>    -->
</body>
   	<script type="text/javascript" language="javascript">
    	var fileMgr = new HttpUploaderMgr();
    	fileMgr.Config["PostUrl"] = "http://localhost:8080/HttpUploader/upload.jsp";
    	//与文件同时上传的附加信息。
    	fileMgr.Fields["uid"] = "100";
    	fileMgr.Load();
		
		$(document).ready(function()
		{
			fileMgr.Init();
		});
		
		//上传本地文件
		function UploadLocaFile()
		{
			fileMgr.AddFile("D:\\WPSetup.exe");
			fileMgr.PostFirst();
		}
		
		//创建文件夹
		function testCreateFolder()
		{
			var obj = new ActiveXObject(fileMgr.ActiveX["Partition"]);
			obj.CreateFolder("D:\\test");
		}
		
		//验证本地文件是否存在
		function testExistFile()
		{
			var obj = new ActiveXObject(fileMgr.ActiveX["Partition"]);
			if(obj.ExistFile("D:\\QQ2012.exe"))
			{
				alert("本地文件存在");
			}
			else
			{
				alert("本地文件不存在");
			}
		}
	</script>       

</html>
    