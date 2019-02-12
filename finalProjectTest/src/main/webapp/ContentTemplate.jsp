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
            $("#condit1").click(function() {               
                $.get('ResultSearch', function(responseText) { 
                    $('#content1').text(responseText);        
                });
            });
        });


        $("#condit1").click(function(){
        	var text1 = document.getElementById('condit1').innerHTML;
        	alert(text1);
        	
         $.ajax({
            url:'ResultSearch',
            data:{condition1: 'search1'},
            type:'get',
            cache:false,
            success:function(data){
               alert(data);
               $('#content1').text(responseText); 
            },
            error:function(){
              alert('error');
            }
         }
    );
}
);
    </script>

</head>
<body>
<%-- 	<jsp:include page="Header.jsp"> --%>
<%-- 		<jsp:param name="articleId2" value="" /> --%>
<%-- 	</jsp:include> --%>
	<section style="border: 1px solid black; width: 150px; height: 100px; float: left; margin:20px; background-image: url('../image/profile2.png');"></section>
	<section
		style="border: 1px solid black; padding: 2px; width: 80%; height: auto; float: right; margin: 20px;">
		<nav>請輸入選擇條件: &nbsp;
		<select id="condit1">
		<option>部門</option>
		<option>薪水</option>
		<option>部們地點</option>
		<option>班次</option>
		</select>
		 &nbsp; 或是輸入關鍵字: &nbsp;
		<input placeholder="please enter"><br>
		<button id="butt1" style="width: auto;">確定送出</button>
		</nav>
	</section>
	<section
		style="border: 1px solid black; padding: 2px; width: 80%; height: 60%; float: right; margin: 20px">
		<nav></nav>
		<div id="content1">
		</div>
	</section>
<%-- 	<jsp:include page="SidePanel.jsp"> --%>
<%-- 		<jsp:param name="articleId" value="" /> --%>
<%-- 	</jsp:include> --%>


</body>
</html>