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
	<frame src="top/top.jsp" name="top">
	</frame>
	<frameset cols="15%,*" rows="*" frameborder="0">
		<frame src="left/left.jsp" name="left">
		</frame>
		<frame src="right/welcome.jsp" name="right">
		</frame>
	</frameset>
</frameset>
</html>