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
<frameset rows="15%,*" cols="*" frameborder="0" framespacing="0">
	<frame src="../jsp/top/top.jsp" name="top">
	<frameset cols="15%,*" rows="*" frameborder="0">
		<frame src="../jsp/left/left.jsp" name="left">
		<frame src="../jsp/right/welcome.jsp" name="right">
	</frameset>
</frameset>
</html>