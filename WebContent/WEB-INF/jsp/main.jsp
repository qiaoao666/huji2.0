<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css"/>
	<link rel="stylesheet" type="text/css" href="../css/admin.css"/>
	<script src="../js/jquery-1.9.1.min.js"></script>
	<script src="../layui/layui.js" type="text/javascript" charset="utf-8"></script>
  </head>
  <body>
  	<div class="main-layout" id='main-layout'>
		<!--侧边栏-->
		<div class="main-layout-side">
			<div class="m-logo"></div>
			<ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
				<!-- layui-nav-itemed 基础说明 -->
				<li class="layui-nav-item">
					<a href="datasource/main.html" target="option"><i class="iconfont">&#xe60d;</i>公共数据源配置</a>
				</li>
				<!-- 标签说明 &#xe607;  -->
				<li class="layui-nav-item"><a href="javascript:void(0);">
					<i class="iconfont">&#xe607;</i>报表管理</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:void(0);" onclick="openUrl('resource/report/reportList.jsp')"><span class="l-line"></span>报表管理</a>
						</dd>
					</dl>
				</li>
				<li class="layui-nav-item">
					<a href="javascript:void(0);"><i class="iconfont">&#xe608;</i>模板展示</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="api/action/actiondefination.html" target="option"><span class="l-line"></span>档案目录</a>
						</dd>
						<dd>
							<a href="api/action/drxmvcxmlintro.html" target="option"><span class="l-line"></span>档案盒封面</a>
						</dd>
						<dd>
							<a href="api/action/actionmethod.html" target="option"><span class="l-line"></span>卷内备考表</a>
						</dd>
						<dd>
							<a href="api/action/actionannotation.html" target="option"><span class="l-line"></span>档案盒脊背</a>
						</dd>
						<dd>
							<a href="api/action/actionannotation.html" target="option"><span class="l-line"></span>档案借阅单</a>
						</dd>
						<dd>
							<a href="api/action/actionannotation.html" target="option"><span class="l-line"></span>其他报表</a>
						</dd>
					</dl>
				</li>
				<li class="layui-nav-item"><a href="http://www.hx-soft.cn/"
					target="_blank"><i class="iconfont">&#xe60c;</i>友情链接</a>
				</li>
			</ul>
		</div>
		<!--右侧内容-->
		<div class="main-layout-container">
			<!--头部-->
			<div class="main-layout-header">
				<div class="menu-btn" id="hideBtn">
					<a href="javascript:void(0);"> <span class="iconfont">&#xe60e;</span>
					</a>
				</div>
				<ul class="layui-nav" lay-filter="rightNav">
					<!-- 下载icon  &#xe601; -->
					<li class="layui-nav-item">
						<a href="download.html" onclick="download()"><i class="layui-icon layui-icon-download-circle" 
						style="font-size: 20px; color: #c2c2c2;">
						</i>
						</a>
						</li>
					<!-- 邮箱icon -->
					<li class="layui-nav-item">
						<a href="javascript:void(0);"  data-url="" data-text="提交反馈" onclick="openSubmit();"><i class="iconfont" style="font-size: 20px; color: #c2c2c2;">&#xe603;</i></a>
					</li>
					<li class="layui-nav-item"><a href="javascript:void(0);"
						data-url="" data-text="当前时间" id="currentTime"
						style="font-size: 15px; color: #c2c2c2;">2018-07-16 15:11:37</a></li>
				</ul>
			</div>
			<!--主体内容-->
			<div class="main-layout-body layui-tab-content layui-tab-item layui-show"  style="background: #f5f5f5;">
				<iframe id="mainFrame" src="../welcome.jsp" width="100%" height="100%" name="option" scrolling="auto" class="iframe" framborder="0"></iframe>
			</div>
		</div>
		<!--遮罩-->
		<div class="main-mask"></div>
	</div>
	<script type="text/javascript">
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
		function openUrl(url){
			window.mainFrame.src = url;
		}
	</script>
  </body>
</html>
