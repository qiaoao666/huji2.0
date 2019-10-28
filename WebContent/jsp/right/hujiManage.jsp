<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/table.css" />
<link rel="stylesheet" href="../../css/button.css" />
<link>
</head>
<body>
<%!int num =0; %>
	<c:if test="${ hujiList.size() == 0}">
	暂时没有任何户籍信息
	</c:if>
	<c:if test="${ hujiList.size() != 0}">
	<table border="0" cellspacing="0" cellpadding="0"
		style="width: 100%; padding-left: 3px; padding-right: 3px;">
		<tr class="titleBar">
			<td width="100%" align="center" valign="middle"><span
				style="float: left; font-size: 16px; line-height: 30px; font-weight: bolder; font-family: SimHei; color: #00407C; margin: 5px 0 0 5px;">◆
					户籍列表</span>
				<div style="margin: 8px 0 0 0; float: right;">
					请输入检索关键字： <input type="text" size="25" id="keyword" name="keyword"
						value=""> <a class="vui-btn-wrapper vui-theme-blue-dark"
						href="javascript:void(0);" id="search" name="search"
						onclick="doSearch()" style="color: white;">检索</a>
				</div></td>
		</tr>
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0"
					style="height: 100%; width: 100%;" class="listTable">
					<tr class="Header">
						<th width="5%">户籍编号</th>
						<th width="7%">户主名</th>
						<th width="14%">户主电话</th>
						<th width="7%">小区名</th>
						<th width="10%">单元号</th>
						<th width="10%">房间号</th>
						<th width="10%">户籍所在地</th>
						<th width="10%">户籍状态</th>
					</tr>
					<c:forEach items="${hujiList}" var="huji">
					<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
						<td>${huji.hujiId }</td>
						<td>${huji.holderName }</td>
						<td>${huji.holderPhone }</td>
						<td>${huji.villageName }</td>
						<td>${huji.unitNum }</td>
						<td>${huji.roomNum }</td>
						<td>${huji.holderNative }</td>
						<td>${huji.holderStatus }</td>
					</tr>
					</c:forEach>
					<%-- <tr>
						<td colspan="4" align="right">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							共${totalCount }条记录&nbsp;&nbsp;
							共${totalPage }页&nbsp;&nbsp;
							第${pageCur }页&nbsp;&nbsp;
							<c:url var="url_pre" value=""></c:url>
						</td>
					</tr> --%>
				</table>
			</td>
		</tr>
	</table>
	</c:if>
</body>
</html>