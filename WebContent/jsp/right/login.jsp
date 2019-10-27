<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form action="index/login" modelAttribute="user"  method="post">
	<label>账号：</label><input type="text" name ="userName"/><br>
	<label>密码：</label><input type="password" name="userPass"/><br>
	<input type="reset" value="重置"/>
	<input type="submit" value="登录">
	<a href="index/login">登录账号</a><br>
	${errorMessage }<br>
</form>
</body>
</html>