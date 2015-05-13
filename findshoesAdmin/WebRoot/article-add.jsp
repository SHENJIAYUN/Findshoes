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
    <link rel="stylesheet" href="css/article-add.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/admin.js"></script>  
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon" />
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon" />
    
    <style>
    	.forminfo{list-style:none;margin-top:1.5em;}
		.forminfo li{margin-top:1em;list-style:none;}
    </style>
    
 </head>
  
<body>
<div class="lefter">
    <div class="logo"><a style="font-size:large" href="index.jsp" target="_blank"><strong>女鞋后台管理系统</strong></a></div>
</div>
<div class="righter nav-navicon" id="admin-nav">
    <div class="mainer" >
        <div class="admin-navbar">
            <span class="float-right">
            	<a class="button button-little bg-main" href="#">前台首页</a>
                <a class="button button-little bg-yellow" href="login.html">注销登录</a>
            </span>
            <ul class="nav nav-inline admin-nav">
                <li><a href="index.jsp" class="icon-home"> 开始</a>
                <li><a href="system.jsp" class="icon-home"> 系统</a>
               <!--  <li><a href="homepage.jsp" class="icon-file-text"> 首页</a> -->
                <li><a href="shoes-serach.jsp" class="icon-file-text"> 鞋子</a> </li>
               <!--  <li><a href="classify.jsp" class="icon-file-text"> 分类条件</a> </li> -->
                <li class="active"><a href="article.jsp" class="icon-cog"> 文章</a>
            		<ul><li><a href="article.jsp">文章列表</a></li><li class="active"><a href="article-add.jsp">添加</a></li><li><a href="#" >批量添加</a></li></ul>
                </li>            
                <li><a href="store-err.jsp" class="icon-user"> 商店</a></li>
                <li><a href="users-search.jsp" class="icon-file">用户</a></li>
            </ul>
       </div>
       <div class="admin-bread">
           <span>您好，admin，欢迎您的光临。</span>
           <ul class="bread">
               <li><a href="index.jsp" class="icon-home"> 开始</a></li>
               <li><a href="article.jsp">文章</a></li>
               <li>添加</li>
           </ul>
       </div>
    </div>

		<div class="admin">	    
<!--			<div class="formbody">		    
			    <div class="formtitle"><span>基本信息</span></div>	
			    
			    			  

 			    	<s:form action ="uploadImg" method ="POST" enctype ="multipart/form-data" >  
	   
					    <ul class="forminfo">
						    <li><label>文章标题</label><s:textfield style="float:left;width:10em;height:1.5em" name="article.title" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
						    <li><label>关键字</label><input name="" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
						    <li><label>是否审核</label><cite><input name="" type="radio" value="" checked="checked" />是&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="radio" value="" />否</cite></li>
						    <li><label>引用地址</label><input name="" type="text" class="dfinput" value="http://www.uimaker.com/uimakerhtml/uidesign/" /></li>
						    <li><label>文章内容</label><textarea name="article.content" cols="" rows="" class="textinput"></textarea></li>
							<li> <s:file name ="myFile" label ="图片1"/> </li>
							<li> <s:file name ="myFile" label ="图片2"/> </li>
							<li> <s:file name ="myFile" label ="图片3"/> </li>
						    <li><button id="button" class="btn" type="submit" data-inline='true' style="display:inline">确认保存</button></li> 
					    </ul>
	
				    </s:form> -->
                    

            <div class="tab">
              <div class="tab-head">
                <strong>类型选择</strong>
                <ul class="tab-nav">
                  <li class="active"><a href="#tab-set">类型1</a></li>
                  <li><a href="#tab-email">类型2</a></li>
                  <!-- <li><a href="#tab-upload">类型3</a></li> -->
                </ul>
              </div>
     
     	  <div class="tab-body">
       		 <br />
       		 <div class="tab-panel active" id="tab-set">
        		<s:form action ="uploadImg" method ="POST" enctype ="multipart/form-data" >  
        		  <div class="form-group">
        			<input type="radio" name="article.type" value="1"/>类型 1
				  </div>
        		     	
                  <div class="form-group">
                     <div class="label"><label for="articlename">文章标题</label></div>
                     <div class="field">
                    	<input type="text" class="input" id="articlename" name="article.title" size="50" placeholder="文章标题" data-validate="required:请填写你网站的名称" />
                     </div>
                  </div>
                  
                  <div class="form-group">
                     <div class="label"><label for="leadname">文章导语</label></div>
                     <div class="field">
                    	<!-- <textarea  class="input"  rows="2" cols="50" name="article.lead"  placeholder="文章导语" data-validate="required:请填写文章导语" /></textarea> -->
                    	<input type="text" class="input" id="leadname" name="article.lead"  placeholder="文章导语" data-validate="required:请填写文章导语" />
                     </div>
                  </div>
                  
                <div class="form-group">
                    <div class="label"><label for="article.keywords">关键字</label></div>
                    <div class="field">
                    	<input type="text" class="input"  name="article.keywords"  placeholder="请填写关键字，多个关键字用,隔开"  />
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="label"><label for="readme">文章内容</label></div>
                    <div class="field">
                    	<textarea class="input" rows="5" cols="50" name="article.content" placeholder="文章内容" data-validate="required:请填写文章内容，建议在200字以内。"></textarea>
                    </div>
                </div>
				<div class="form-group">
                
                  <s:file name ="myFile" label ="图片1"/> 
                  <s:file name ="myFile" label ="图片2"/> 
                  <s:file name ="myFile" label ="图片3"/> 
                  <!--  <s:textfield name ="caption" label ="Caption" />   -->
               
				</div>
				<div class="form-group">
                	<button id="button" class="btn" type="submit" data-inline='true' style="position:relative;margin-top:5em;float:right">添加</button>
         	  	</div>
         	  </s:form>  	       
       </div> 
      <div class="tab-panel" id="tab-email">
        
        		<s:form action ="uploadImg" method ="POST" enctype ="multipart/form-data" >
        		
        		  <div class="form-group">
        			<input type="radio" name="article.type" value="2"/>类型2
				  </div>     	
                  <div class="form-group">
                     <div class="label"><label for="sitename">文章标题</label></div>
                     <div class="field">
                    	<input type="text" class="input" id="articlename" name="article.title" size="50" placeholder="文章标题" data-validate="required:请填写你网站的名称" />
                     </div>
                  </div>
                  
                   <div class="form-group">
                     <div class="label"><label for="leadname">文章导语</label></div>
                     <div class="field">
                    	<!-- <textarea  class="input"  rows="2" cols="50" name="article.lead"  placeholder="文章导语" data-validate="required:请填写文章导语" /></textarea> -->
                    	<input type="text" class="input" id="leadname" name="article.lead"  placeholder="文章导语" data-validate="required:请填写文章导语" />
                     </div>
                  </div>
                  
 <!--                <div class="form-group">
                    <div class="label"><label for="desc">鞋子货号</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="desc" name="desc" size="50" placeholder="请填写货号"  />
                    </div>
                </div> -->
                
                <div class="form-group">
                    <div class="label"><label for="readme">文章内容</label></div>
                    <div class="field">
                    	<textarea class="input" rows="5" cols="50" name="article.content" placeholder="文章内容" data-validate="required:请填写文章内容，建议在200字以内。"></textarea>
                    </div>
                </div>
                
                 <div class="form-group">
                     <div class="label"><label for="sitename">鞋子链接</label></div>
                     <div class="field">
                    	<input type="text" class="input" id="articlename" name="article.shoeUrl" size="50" placeholder="文章标题" data-validate="required:请填写你网站的名称" />
                     </div>
                  </div>
                
                <div class="form-group">
                	<div style="position:relative;float:left;width:8em">
	                    <div class="label"><label for="readme">模特身高</label></div>
	                    <div class="field">
	                    	<input class="input"  name="article.height" placeholder="模特身高" data-validate="required:请填写"></textarea>
	                    </div>
	                </div> 

	                <div style="position:relative;float:left;width:8em;margin-left:2em;margin-bottom:2em">
	                    <div class="label"><label for="readme">模特体重</label></div>
	                    <div class="field">
	                    	<input class="input"  name="article.weight" placeholder="模特体重" data-validate="required:请填写"></textarea>
	                    </div>
	                </div> 
	                <div style="position:relative;float:left;width:8em;margin-left:2em;margin-bottom:2em">
	                    <div class="label"><label for="readme">模特三围</label></div>
	                    <div class="field">
	                    	<input class="input"  name="article.bwh" placeholder="模特三围" data-validate="required:请填写"></textarea>
	                    </div>
	                </div> 
	                <div style="position:relative;float:left;width:8em;margin-left:2em;margin-bottom:2em">
	                    <div class="label"><label for="readme">模特脚型</label></div>
	                    <div class="field">
	                    	<input class="input"  name="article.footType" placeholder="模特脚型" data-validate="required:请填写"></textarea>
	                    </div>
	                </div> 
	                <div style="position:relative;float:left;width:8em;margin-left:2em;margin-bottom:2em">
	                    <div class="label"><label for="readme">模特脚长</label></div>
	                    <div class="field">
	                    	<input class="input"  name="article.footHeight" placeholder="模特脚长" data-validate="required:请填写"></textarea>
	                    </div>
	                </div> 
	                <div style="position:relative;float:left;width:8em;margin-left:2em;margin-bottom:2em">
	                    <div class="label"><label for="readme">模特脚宽</label></div>
	                    <div class="field">
	                    	<input class="input"  name="article.footWidth" placeholder="模特脚宽" data-validate="required:请填写"></textarea>
	                    </div>
	                </div> 
	                
                </div>
                
				<div class="form-group" style="margin-top:2em">
            
                  <s:file name ="myFile" label ="图片1"/> 
              <!--     <s:file name ="myFile" label ="图片2"/> 
                  <s:file name ="myFile" label ="图片3"/>  -->
                  <!--  <s:textfield name ="caption" label ="Caption" />   -->
                 <ul>
				</div>
				<div class="form-group">
                	<button id="button" class="btn" type="submit" data-inline='true' style="position:relative;margin-top:5em;float:right">添加</button>
         	  	</div>
         	  </s:form>  
       </div>
    </div> 
  <div>
</div>             	    
	<script>
		document.getElementsByName("article.type")[1].checked="checked";
	    document.getElementsByName("article.type")[2].checked="checked";
	    document.getElementsByName("article.type")[3].checked="checked";
	</script>
	  	  
</body>
</html>
