<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		$(".liClass > a").css("color" , "black");
		
		$(".liClass:first").addClass("active");
		
		$(".liClass:first > a").css("color" , "white");
		
		$(".liClass").click(function(){
			$(".liClass").removeClass("active");
			$(".liClass > a").css("color" , "black");
			$(this).addClass("active");
			$(this).children("a").css("color","white");
		});
		
		//Open a new window using js
		window.open("settings/dictionary/type/list.do","workareaFrameDic");
		
	});
	
</script>
</head>
<body>

	
	<!-- 顶部 -->
	<div id="top" style="height: 50px; background-color: #3C3C3C; width: 100%;">
		<div style="position: absolute; top: 5px; left: 0px; font-size: 30px; font-weight: 400; color: white; font-family: 'times new roman'">TEST &nbsp;<span style="font-size: 12px;">&copy;2018&nbsp;PEOPLE-WARE</span></div>
	</div>
	
	<!-- Middle -->
	<div id="center" style="position: absolute;top: 50px; bottom: 30px; left: 0px; right: 0px;">
	
		<!-- Navigation -->
		<div id="navigation" style="left: 0px; width: 18%; position: relative; height: 100%; overflow:auto;">
		
			<ul id="no1" class="nav nav-pills nav-stacked">
				<li class="liClass"><a href="settings/dictionary/type/list.do" target="workareaFrameDic"><span class="glyphicon glyphicon-book"></span> Dictionary Type</a></li>
				<li class="liClass"><a href="settings/dictionary/value/list.do" target="workareaFrameDic"><span class="glyphicon glyphicon-list"></span> Dictionary Value</a></li>
			</ul>
			
			<div id="divider1" style="position: absolute; top : 0px; right: 0px; width: 1px; height: 100% ; background-color: #B3B3B3;"></div>
		</div>
		
		<!-- Work Area -->
		<div id="workarea" style="position: absolute; top : 0px; left: 18%; width: 82%; height: 100%;">
			<iframe style="border-width: 0px; width: 100%; height: 100%;" name="workareaFrameDic"></iframe>
		</div>
		
	</div>
	
	<div id="divider2" style="height: 1px; width: 100%; position: absolute;bottom: 30px; background-color: #B3B3B3;"></div>
	
	<!-- Bottom -->
	<div id="down" style="height: 30px; width: 100%; position: absolute;bottom: 0px;"></div>
	
</body>
</html>