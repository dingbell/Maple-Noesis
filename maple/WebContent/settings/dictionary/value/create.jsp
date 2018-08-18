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
<title>Insert title here</title>
<link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="jquery/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#save").click(function(){
			$("#myForm").submit();
		})
	})

</script>
</head>
<body>

	<div style="position:  relative; left: 30px;">
		<h3>Create Dictionary Value</h3>
	  	<div style="position: relative; top: -40px; left: 70%;">
			<button type="button" class="btn btn-primary" id="save">Save</button>
			<button type="button" class="btn btn-default" onclick="window.history.back();">Cancel</button>
		</div>
		<hr style="position: relative; top: -40px;">
	</div>
	<form action="settings/dictionary/value/save.do" method="post" id="myForm" class="form-horizontal" role="form">
					
		<div class="form-group">
			<label for="create-dicTypeCode" class="col-sm-2 control-label">Dictionary Value Code<span style="font-size: 15px; color: red;">*</span></label>
			<div class="col-sm-10" style="width: 300px;">
				<select class="form-control" id="create-dicTypeCode" name="typeCode" style="width: 200%;">
				  <option>---Please select</option>
				  
				  <c:forEach items="${tList }" var="t">
				  	<option value="${t.code }">${t.name }</option>
				  </c:forEach>
				  
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="create-dicValue" class="col-sm-2 control-label">Dictionary Value<span style="font-size: 15px; color: red;">*</span></label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="create-dicValue" name="dicValue" style="width: 200%;">
			</div>
		</div>
		
		<div class="form-group">
			<label for="create-text" class="col-sm-2 control-label">Value</label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="create-text" name="value" style="width: 200%;">
			</div>
		</div>
		
		<div class="form-group">
			<label for="create-orderNo" class="col-sm-2 control-label">OrderNo</label>
			<div class="col-sm-10" style="width: 300px;">
				<input type="text" class="form-control" id="create-orderNo" name="orderNo" style="width: 200%;">
			</div>
		</div>
	</form>
	
	<div style="height: 200px;"></div>
</body>
</html>