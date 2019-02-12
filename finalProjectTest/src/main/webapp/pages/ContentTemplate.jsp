<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../style/topNavBar.css">
<link rel="stylesheet" href="../style/login.css">

<title>登入後首頁</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(function() {
			var text1;
			
			$("#condit1").change(function() {
				text1 = $("#condit1").find(":selected").text();
			});
		
			$("#butt1").click(function() {

				$.ajax({
					url : 'ResultSearch',
					data : {
						condition1 : text1
					},
					type : 'post',
					cache : false,
					success : function(data) {
						$('#content1').text(data);
					}
				});
			});
	});
</script>

</head>
<body>
	<jsp:include page="Header.jsp">
		<jsp:param name="articleId2" value="" />
	</jsp:include>
	<section
		style="border: 1px solid black; width: 150px; height: 100px; float: left; margin: 20px; background-image: url('../image/profile2.png');"></section>
	<section
		style="border: 1px solid black; padding: 2px; width: 80%; height: auto; float: right; margin: 20px;">
		<nav>
			請輸入選擇條件: &nbsp; <select id="condit1">
				<option>部門</option>
				<option>薪水</option>
				<option>地點</option>
				<option>班次</option>
			</select> &nbsp; 或是輸入關鍵字: &nbsp; <input placeholder="please enter"><br>
			<button id="butt1" style="width: auto;">確定送出</button>
		</nav>
	</section>
	<section
		style="border: 1px solid black; padding: 2px; width: 80%; height: 60%; float: right; margin: 20px">
		<nav></nav>
		<div id="content1"></div>
	</section>
	<jsp:include page="SidePanel.jsp">
		<jsp:param name="articleId" value="" />
	</jsp:include>


</body>
</html>