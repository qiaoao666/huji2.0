<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/common.css" />
<link rel="stylesheet" href="../../css/left.css" />
<script type="text/javascript" src="../../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
	    $('.layui-nav-item').hover(function() {
	        $(this).addClass('layui-hover');
	    }, function() {
	        $(this).removeClass('layui-hover');
	    });
	    $('.layui-nav-item').click(function(){
	    	$(this).siblings().removeClass('layui-this');
	    	$(this).addClass('layui-this');
	    	$("a",this)[0].click();
	    });
	});
</script>
</head>
<body>
	<div class="left">
         <ul class="layui-nav">
             <li class="layui-nav-item layui-this"><a href="../right/welcome.jsp" target="right">首页</a></li>
             <li class="layui-nav-item"><a href="../../huji/input" target="right">户籍添加</a></li>
             <li class="layui-nav-item"><a href="../../huji/query" target="right">户籍管理</a></li>
             <li class="layui-nav-item"><a href="../right/managerAdd.jsp" target="right">管理员添加</a></li>
         </ul>
	</div>
</body>
</html>