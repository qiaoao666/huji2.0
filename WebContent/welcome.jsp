<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
	<link rel="stylesheet" type="text/css" href="css/admin.css"/>
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
  </head>
<body>
	<form action="" method="post" id="welcomeform">
		<div class="wrap-container welcome-container">
			<div class="row">
			<div class="welcome-left-container col-lg-1"></div>
				<div class="welcome-left-container col-lg-8">
					<div class="data-show">
						<ul class="clearfix">
							<li class="col-sm-12 col-md-4 col-xs-12">
								<a href="javascript:void(0);" class="clearfix">
								<div class="icon-bg bg-org f-l"><span class="iconfont">&#xe606;</span></div>
								<div class="right-text-con"><p class="name">访问人数</p>
								<p><span class="color-org" id="visitCount"></span>数据<span class="iconfont">&#xe628;</span></p></div>
								</a>
							</li>
							<li class="col-sm-12 col-md-4 col-xs-12">
								<a href="javascript:void(0);" class="clearfix">
									<div class="icon-bg bg-blue f-l"><span class="iconfont">&#xe604;</span></div>
									<div class="right-text-con"><p class="name">点赞人数</p>
									<p><span class="color-blue" id="likedCount"></span>数据<span class="iconfont">&#xe628;</span></p></div>
								</a>
							</li>
							<li class="col-sm-12 col-md-4 col-xs-12">
								<a href="javascript:void(0);" class="clearfix">
								<div class="icon-bg bg-green f-l"><span class="iconfont">&#xe603;</span></div>
								<div class="right-text-con"><p class="name">提交次数</p>
								<p><span class="color-green" id="submitCount"></span>数据<span class="iconfont">&#xe628;</span></p></div>
								</a>
							</li>
						</ul>
					</div>
					<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
					  <legend>报表概述</legend>
					</fieldset>
					<fieldset class="layui-elem-field">
					  <legend>介绍</legend>
					  <div class="layui-field-box" style="margin-left:30px">
					    DRX框架是一款采用自身模块规范编写的Java后端框架，门槛极低，如果有Struts2使用经验的朋友可以更快地上手。<br/>
						框架的目标是使web应用开发变得更容易，通过启用基于 POJO编程模型来促进良好的编程实践。<br/>
						框架体积只有100多KB，能在更可能轻量的情况下完成那些基于Struts / SpringMVC框架程序的核心功能。
					  </div>
					</fieldset>
					<br>
					<fieldset class="layui-elem-field">
					  <legend>学前需知</legend>
					  <div class="layui-field-box" style="margin-left:30px">
					   <h2><font size="3">适用人群</font></h2> <br/>
						本教程是为需要详细了解 DRX-MVC框架的体系结构和实际应用的 Java 程序员设计的。<br/>
						<br/>
					   <h2><font size="3">学习前提</font></h2> <br/>
						在进行本教程之前，你应该对 Java 编程语言有一个很好的了解。对 Eclipse IDE 的基本了解也是必须的，因为所有的示例都是使用 Eclipse IDE 进行编译的。<br/>
					  </div>
					</fieldset>
					<br>
					<fieldset class="layui-elem-field">
					  <legend>环境信息</legend>
					<div class="server-panel panel panel-default">
						<div class="panel-body clearfix">
							<div class="col-md-2">
								<p class="title">Web容器</p>
								<span class="info">tomcat</span>
							</div>
							<div class="col-md-2">
								<p class="title">开发工具</p>
								<span class="info">Eclipse IDE</span>
							</div>
							<div class="col-md-2">
								<p class="title">Java版本</p>
								<span class="info">Jdk&nbsp;1.6 及以上</span>
							</div>
							<div class="col-md-2">
								<p class="title">最新版本</p>
								<span class="info">version 1.5</span>
							</div>
							<div class="col-md-2">
								<p class="title">协议</p>
								<span class="info">http</span>
							</div>
							<div class="col-md-2">
								<p class="title">OS</p>
								<span class="info">windows&linux</span>
							</div>
						</div>
					</div>
					</fieldset>
					<br>
					<fieldset class="layui-elem-field">
					  <legend>更新记录</legend>
					  <div class="layui-field-box" style="margin-left:30px">
					<ul class="layui-timeline" style="margin-top:20px">
					  <li class="layui-timeline-item">
					    <i class="layui-icon layui-timeline-axis"></i>
					    <div class="layui-timeline-content layui-text">
					      <div class="layui-timeline-title"  style="margin-left: 30px;">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>
					    </div>
					  </li>
					  <li class="layui-timeline-item">
					    <i class="layui-icon layui-timeline-axis"></i>
					    <div class="layui-timeline-content layui-text">
					      <div class="layui-timeline-title"  style="margin-left: 30px;">2017年，layui 里程碑版本 2.0 发布</div>
					    </div>
					  </li>
					</ul>
					</div>
					</fieldset>
					<br>
				</div>
				<div class="welcome-edge col-lg-3">
					<div class="panel panel-default comment-panel">
						<div class="panel-header">CDN服务</div>
						<div class="panel-body">
							<p>本页面部分模块采用CDN服务。</p>
							<p>请保障网络畅通。<i class="layui-icon" style="font-weight: bold;">&#xe645;</i></p>
						</div>
					</div>
					<!--联系-->
					<div class="panel panel-default contact-panel">
						<div class="panel-header">联系我们</div>
						<div class="panel-body">
							<p>QQ：1742479707</p>
							<p>E-mail：qiaodandan@hx-soft.cn</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
	</body>
	<!-- js -->
	<script src="layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		var layer;
		layui.use('layer', function(){
		  layer = layui.layer;
		});
		window.onload=function(){
			/* $.ajax({
				type:"GET",
				dataType:"json",
				url:'index@getDataSet.action',
				success: function (result) {
	        		if (result.flag == true) { 
	        			var visitCount = document.getElementById("visitCount");
	        			visitCount.innerHTML += result.obj.visitNum;
	        			var likedCount = document.getElementById("likedCount");
	        			likedCount.innerHTML += result.obj.likedNum;
	        			var submitCount = document.getElementById("submitCount");
	        			submitCount.innerHTML += result.obj.submitNum;
	        		}else if (result.flag == false) {
	        			alert(result.msg);
	        		}
        		}
			}) */
		}
		
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
			//监听导航点击
			element.on('nav(demo)', function(elem) {
				layer.msg(elem.text());
			});
		});
	
		var layer;
		layui.use('layer', function() {
			layer = layui.layer;
		});
	</script>
</html>
