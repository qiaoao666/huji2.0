<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>login</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    	function login(){
    		var userName = document.getElementById("userName").value;
    		userName = userName.replace(/^\s+|\s+$/g,"");
    		var userPass = document.getElementById("userPass").value;
    		userPass = userPass.replace(/^\s+|\s+$/g,"");
    		if(userName == ""){
    			alert("请输入登录名");
    			return;
    		}
    		if(userPass == ""){
    			alert("请输入密码");
    			return;
    		}
    		window.location.href = "login/main";
    	}
    </script>
  </head>
  <body>
  	<img class="bgone" src="images/1.jpg" />

	<img class="pic" src="images/a.png" />
	<div class="table">
		<div class="wel">户籍管理系统后台登录</div>
		<div class="wel1">Background login of household registration management system</div>
		<div class="user">
			<div id="yonghu" style=""><img src="images/yhm.png" /></div>
			<input id="userName" type="text" name="用户名"/>
		</div>			
		<div class="password">
			<div id="yonghu"><img src="images/mm.png" /></div>
			<input id="userPass" type="password" name="密码"/>
			  	
		</div>
		<input class="btn" type="button" name="登录" value="登录" onclick="login();"/>
		
	</div>
  </body>
</html>