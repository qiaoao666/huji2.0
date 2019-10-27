<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	function login() {
		var userName = document.getElementById("userName").value;
		userName = userName.replace(/^\s+|\s+$/g, "");
		var userPass = document.getElementById("userPass").value;
		userPass = userPass.replace(/^\s+|\s+$/g, "");
		if (userName == "") {
			alert("请输入登录名");
			return;
		}
		if (userPass == "") {
			alert("请输入密码");
			return;
		}
		$.ajax({
			type: "POST",
			/* dataType: "json", */
			url: 'login/main',
			data: {"userName":userName,"userPass":userPass},
			async:true,
			success: function (result) {
				//console.log(result);//在控制台输出
				alert(result);
				//window.location.href = "login/main";
			},
			error:function (result) {
				alert("登录失败");
			}
		});
/* 		function getXmlHttpObject() {
			var xmlHttpRequest;
			// body...
			if (window.ActiveXObject) {
				xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} else {
				xmlHttpRequest = new XMLHttpRequest();
			}
			return xmlHttpRequest;
		}
		var myXmlHttpRequest = "";
		function checkName() {
			myXmlHttpRequest = getXmlHttpObject();
			if (myXmlHttpRequest) {
				//alert($("username").value);
				//url指向处理请求的页面 和传递的参数
				var url = "/ajax_checkJSON/registerPro.jsp?username="
						+ $("username").value;
				myXmlHttpRequest.open("get", url, true);
				myXmlHttpRequest.onreadystatechange = chuli;
				myXmlHttpRequest.send(null);
			}
		}
		function chuli() {
			if (myXmlHttpRequest.readyState == 4) {
				//var ss = myXmlHttpRequest.responseText;
				var Tres = eval("(" + myXmlHttpRequest.responseText + ")");
				//window.alert(Tres);
				$('myres').value = Tres.res;
			}
		}
		function $(id) {
			return document.getElementById(id);
		} */



	}
</script>
</head>
<body>
	<img class="bgone" src="images/1.jpg" />

	<img class="pic" src="images/a.png" />
	<div class="table">
		<div class="wel">户籍管理系统后台登录</div>
		<div class="wel1">Background login of household registration
			management system</div>
		<div class="user">
			<div id="yonghu" style="">
				<img src="images/yhm.png" />
			</div>
			<input id="userName" type="text" name="用户名" />
		</div>
		<div class="password">
			<div id="yonghu">
				<img src="images/mm.png" />
			</div>
			<input id="userPass" type="password" name="密码" />

		</div>
		<input class="btn" type="button" name="登录" value="登录"
			onclick="login();" />

	</div>
</body>
</html>