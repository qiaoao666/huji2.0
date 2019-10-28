<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%  
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script type="text/javascript">
/* 	function addHuji(){
		String info ="";
		$.ajax({
			type: "POST",
			url: 'huji/add',
			data: {"info":info},
			async:true,
			success: function (result) {
				//console.log(result);//在控制台输出
				//alert(decodeURIComponent(result));
				result = decodeURIComponent(result);
				if(result=="http://localhost:8080/huji2.0/jsp/right/welcome.jsp"){
					alert("户籍添加成功");
					window.open(result,target="_parent");
				}else{
					alert(result);
				}
				//window.location.href = "login/main";
			},
			error:function (result) {
				alert("添加失败");
			}
		});
	}  
 */
</script>
</head>
<body>

	<form:form action="huji/add" method="post" modelAttribute="huji">
		<table border=1 style="border-collapse: collapse">
			<caption>
				<font size=4 face=华文新魏>户籍添加页面</font>
			</caption>
			<tr>
				<td>户主名<font color="red">*</font></td>
				<td>
					<form:input path="holderName"/>
				</td>
			</tr>
			<tr>
				<td>户主电话<font color="red">*</font></td>
				<td>
					<form:input path="holderPhone"/>
				</td>
			</tr>
			<tr>
				<td>小区名*</td>
				<td>
					<form:input path="villageName"/>
				</td>
			</tr>
			<tr>
				<td>单元号*</td>
				<td>
					<form:input path="unitNum"/>
				</td>
			</tr>
			<tr>
				<td>房间号</td>
				<td>
					<form:input path="roomNum"/>
				</td>
			</tr>
			<tr>
				<td>户籍所在地*</td>
				<td>
					<form:input path="holderNative"/>
				</td>
			</tr>
			<tr>
				<td>户籍状态*</td>
				<td>
					<form:input path="holderStatus"/>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="提交"/>
				</td>
				<td align="left">
					<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>