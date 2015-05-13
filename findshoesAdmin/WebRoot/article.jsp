<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
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
    
    <!-- <link href="css/HttpUploader.css" type="text/css" rel="Stylesheet"/> -->
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/HttpUploader.js" charset="utf-8"></script>
    
    <style>
		.td-url{/*text-overflow:ellipsis;*/white-space:nowrap;overflow: hidden}
		.table{position:relative;table-layout:fixed;padding-top:1.5em}
		.table tr th{font-size:.8em;white-space:nowrap;overflow: hidden}
		.table td{font-size:.6em;white-space:nowrap;overflow: hidden}
	</style>
</head>

<body>


<%
		//驱动程序名 
		String driverName = "com.mysql.jdbc.Driver";
		//数据库用户名 
		String userName = "root";
		//密码 
		String userPasswd = "root";
		//数据库名 
		String dbName = "whrsdb";
		//表名 
		String tableName = "article";
		//联结字符串 
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
				+ userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection connection = DriverManager.getConnection(url);
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
	%>

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
               <!--  <li><a href="homepage.jsp" class="icon-file-text"> 首页</a> -->
                <li><a href="shoes-search.jsp" class="icon-file-text"> 鞋子</a> </li>
                <!-- <li><a href="classify.jsp" class="icon-file-text"> 分类条件</a> </li> -->
                <li class="active"><a href="article.jsp" class="icon-cog"> 文章</a>
           		<ul>
           		<li class="active"><a href="article.jsp">文章列表</a></li>
           		<li><a href="article-add.jsp">添加</a></li>
           		<li><a href="#" >批量添加</a></li>
           		</ul>
                </li>
                <li><a href="store-err.jsp" class="icon-user"> 商店</a></li>
                <li><a href="users-search.jsp" class="icon-file">用户</a></li>
            </ul>
        </div>
        <div class="admin-bread">
            <span>您好，admin，欢迎您的光临。</span>
            <ul class="bread">
                <li><a href="article.jsp" class="icon-home"> 文章列表</a></li>
                <li><a href="article-add.jsp">添加</a></li>
                <li>批量添加</li>
            </ul>
        </div>
    </div>
</div>

<div class="admin">
    <div class="panel admin-panel">
    	<div class="panel-head"><strong>文章列表</strong></div>
    	
        <div class="padding border-bottom">
            <input type="button" class="button button-small checkall" name="checkall" checkfor="id" value="全选" />
            <a  class="button button-small border-green" href="article-add.jsp" target="#">添加文章</a>
            <input type="button" class="button button-small border-yellow" value="批量删除" />
           <!--  <input type="button" class="button button-small border-blue" value="回收站" /> -->
        </div>
        <table class="table table-hover">
        	<tr><th width="45">选择</th><th width="50"><%out.print("ID");%></th><th width="50"><%out.print("类型");%></th><th width="200"><%out.print("名称");%></th><th width="400"><%out.print("内容");%></th><th width="180"><%out.print("时间");%></th><th width="100">操作</th></tr>
           <!--  <tr><td><input type="checkbox" name="id" value="1" /></td><td>1</td><td>Zara推出中国农历新年限定款女鞋</td><td>2014-10-1</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="2" /></td><td>1</td><td>温暖母亲节 Marks & Spencer(M&S)马莎感恩礼献</td><td>2014-9-20</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="3" /></td><td>2</td><td>全民Vintage 盘点明星至爱平底鞋</td><td>2014-9-10</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="4" /></td><td>3</td><td>移动优先、跨屏响应</td><td>2014-9-1</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="5" /></td><td>3</td><td>基本页面</td><td>2014-8-20</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="6" /></td><td>2</td><td>第三方应用支持</td><td>2014-8-10</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="7" /></td><td>1</td><td>业务合作</td><td>2014-8-1</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="8" /></td><td>1</td><td>使用许可</td><td>2014-7-20</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="9" /></td><td>1</td><td>文本</td><td>2014-7-10</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="10" /></td><td>1</td><td>背景、边框、圆角</td><td>2014-7-1</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr>
            <tr><td><input type="checkbox" name="id" value="11" /></td><td>1</td><td>边界、填充</td><td>2014-6-20</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="{if(confirm('确认删除?')){return true;}return false;}">删除</a></td></tr> 
            <tr><td><input type="checkbox" name="id" value="12" /></td><td>2</td><td>CSS动画</td><td>2014-6-10</td><td><a class="button border-blue button-little" href="#">修改</a> <a class="button border-yellow button-little" href="#" onclick="">删除</a></td></tr>-->
            
        <%
			while (rs.next()) {
		%>
		<tr>
			<td><input class="deleck" type="checkbox" name="deleck" value="<%= rs.getString(1)%>"/></td>
			<td><%out.print(rs.getString(1));%></td>
			<td><%out.print(rs.getString(8));%></td>
			<td><%out.print(rs.getString(2));%></td>
			<td><%out.print(rs.getString(11));%></td>
			<td><%out.print(rs.getString(10));%></td>
			<td><a class="button border-blue button-little" >修改</a> <button class="button border-yellow button-little" onclick="eachSelect(<%= rs.getString(1)%>)">删除</button>
			</td>
		</tr>
		<%
			}
		%>
            
            
        </table>
        <input name="delselect" type="button" class="right-button08" value="删除选中项" onclick="deleSelect()">
        
        <div class="panel-foot text-center">
            <ul class="pagination"><li><a href="#">上一页</a></li></ul>
            <ul class="pagination pagination-group">
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
            </ul>
            <ul class="pagination"><li><a href="#">下一页</a></li></ul>
        </div>
    </div>
    <br />
</div>

<div class="hidden"><script src="http://s4.cnzz.com/stat.php?id=5952475&web_id=5952475" language="JavaScript"></script></div>
  
<script>
	function deleSelect(){
		/* var array = new Array(); //用于保存 选中文章ID */
		var array ="";
		var flag;
		$(".deleck").each(function(){
			if($(this).attr("checked")){
				flag =true;
			}
		});
		if (flag){
			$(".deleck").each(function(){
				if($(this).attr("checked")){
					/* array.push($(this).val()); */
					if(array == "")
						array = array +  $(this).val();
					else
						array = array + "," + $(this).val();
				}
			});
		}
		else{
			alert("至少你要选择一个待删除记录"); 
		}
		$.ajax({
			url:"deleSelect.action",
			type:"post",
			dataType:"json",
			data:{"array":array},
			success:function(){
				/* alert("ajax success"); */
			    window.self.location = "article.jsp"; 
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
			}
		});
	}
	
	function eachSelect(array){
		$.ajax({
			url:"deleSelect.action",
			type:"post",
			dataType:"json",
			data:{"array":array},
			success:function(){
				/* alert("ajax success"); */
			    window.self.location = "article.jsp"; 
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
			}
		});
	}
</script>
  
      
</body>   

</html>


    