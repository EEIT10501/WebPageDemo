<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Accordion - Collapse content</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/style/shoppingcart.css"> -->
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion({
			collapsible : true,
			heightStyle : "content"
		});
	});
</script>
<style type="text/css">
section:after {
	content: "";
	display: table;
	clear: both;
}
</style>
</head>

<body>
	<div id="accordion" style="width: 15%; border: 1px solid black; margin-top:130px;">
		<h3>簽到退管理</h3>
		<div>
			<ul>
				<li>List item</li>
				<li>List item</li>

			</ul>
		</div>
		<h3>排班管理</h3>
		<div>
			<ul>
				<li>List item</li>
				<li>List item</li>
			</ul>
		</div>
		<h3>請假管理</h3>
		<div>
			<ul>
				<li>請假申請</li>
				<li>請假紀錄</li>
				<li>List item</li>
			</ul>
		</div>
		<h3>加班管理</h3>
		<div>
			<ul>
				<li>加班申請</li>
				<li>加班紀錄</li>
				<li>List item</li>
			</ul>
		</div>
		<h3>薪資查詢</h3>
		<div>
			<ul>
				<li>薪資查詢</li>
				<li>紅利</li>
				<li>List item</li>
			</ul>
		</div>
		<h3>出勤異常管理</h3>
		<div>
			<ul>
				<li>出勤紀錄</li>
				<li>List item</li>
				<li>List item</li>
			</ul>
		</div>
		<h3>管理區</h3>
		<div>
			<ul>
				<c:choose>
				
						<c:out value="使用者資料管理"></c:out>
				</c:choose>
<!-- 				<li>使用者資料管理</li> -->
				<li>請假核准</li>
				<li>薪水核准</li>
				<li>新增使用者</li>
				<li>人事報表</li>
			</ul>
		</div>
	</div>
</body>
</html>