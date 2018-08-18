<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="jquery/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<div style="position:  relative; left: 30px;">
		<h3>Edit Dictionary Value</h3>
	  	<div style="position: relative; top: -40px; left: 70%;">
			<button type="button" class="btn btn-primary">Update</button>
			<button type="button" class="btn btn-default" onclick="window.history.back();">Cancel</button>
		</div>
		<hr style="position: relative; top: -40px;">
	</div>
	<form class="form-horizontal" role="form">
					
		<div class="form-group">
			<label for="edit-dicTypeCode" class="col-sm-2 control-label">Dictionary Type Code</label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="edit-dicTypeCode" style="width: 200%;" value="${v.typeCode }" readonly>
			</div>
		</div>
		
		<div class="form-group">
			<label for="edit-dicValue" class="col-sm-2 control-label">Dictionary Value<span style="font-size: 15px; color: red;">*</span></label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="edit-dicValue" style="width: 200%;" value="${v.dicValue }">
			</div>
		</div>
		
		<div class="form-group">
			<label for="edit-text" class="col-sm-2 control-label">Value</label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="edit-text" style="width: 200%;" value="${v.value }">
			</div>
		</div>
		
		<div class="form-group">
			<label for="edit-orderNo" class="col-sm-2 control-label">OrderNo</label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="edit-orderNo" style="width: 200%;" value="${v.orderNo }">
			</div>
		</div>
	</form>
	
	<div style="height: 200px;"></div>
</body>
</html>