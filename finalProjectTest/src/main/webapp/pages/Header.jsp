<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../style/topNavBar.css">
<!-- <link rel="stylesheet" href="../shoppingcart.css"> -->
</head>
<body style="margin: auto;">
<header style="height: 50px">
	<div class="navbar" style="margin: auto;">
		<a href="ProductSearch.jsp">首頁</a> 
		<a href="CartContentPage.jsp" style="float: right; margin: 0px; padding: 6px;"><img src="../image/profile2.png" style="width: 30px; height: 30px"></a>
		<a href="OrderHistory.jsp" style="float: right;">信箱</a>
		<a href="TrackOrderPage_JSTL2.jsp" style="float: right;">註冊</a>
		<a href="#contact" style="float: right;">登出</a>
		<a onclick="document.getElementById('id01').style.display='block'" style="float: right;">登入</a>
	</div>
</header>
</body>
</html>