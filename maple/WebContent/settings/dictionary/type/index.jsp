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

<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
<script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#dicTypeList > tr:even").addClass("active");
		
	});
</script>
<script type="text/javascript">
	$(function(){
		// checked checkboxes according name
		$("#ed").click(function(){
			//jquery
			var $cb = $("input[name='cb']:checked");
			if($cb.length==0){
				alert("please select one record");
			}else if($cb.length>1){
				alert("please select one record");
			}else{
				//acquire the value of the record
				//val() function to acquire the value(primary key)
				var code = $cb.val();
				window.location.href="settings/dictionary/type/edit.do?code="+code;
			}
			
		});
		$("#de").click(function(){
			//jquery
			var $cb = $("input[name='cb']:checked");
			if($cb.length==0){
				alert("please select one record");
			}else{
				if(confirm("Are you sure to delete the selected record")) {
					var param = "settings/dictionary/type/delete.do?";
					for(var i = 0; i < $cb.length; i++) {
						param += "code=" + $($cb[i]).val();
						
						if (i < $cb.length - 1) {
							param += "&";
						}
	 				}
					window.location.href=param;
				}
			}
			
		});
	});
</script>
</head>
<body>
	<div>
		<div style="position: relative; left: 30px; top: -10px;">
			<div class="page-header">
				<h3>Dictionary Type List</h3>
			</div>
		</div>
	</div>
	<div class="btn-toolbar" role="toolbar" style="background-color: #F7F7F7; height: 50px; position: relative;left: 30px;">
		<div class="btn-group" style="position: relative; top: 18%;">
		  <button type="button" class="btn btn-primary" onclick="window.location.href='settings/dictionary/type/create.jsp'"><span class="glyphicon glyphicon-plus"></span> create</button>
		  <button type="button" class="btn btn-default" id="ed"><span class="glyphicon glyphicon-edit"></span> edit</button>
		  <button type="button" class="btn btn-danger" id="de"><span class="glyphicon glyphicon-minus"></span> delete</button>
		</div>
	</div>
	<div style="position: relative; left: 30px; top: 20px;">
		<table class="table table-hover">
			<thead>
				<tr style="color: #B3B3B3;">
					<td><input type="checkbox" /></td>
					<td>Order</td>
					<td>Dictionary Type Code</td>
					<td>Name</td>
					<td>Description</td>
				</tr>
			</thead>
			<tbody id="dicTypeList">
				<c:if test="${empty tList }">
					<tr>
						<td colspan="5" align="center">no records</td>
					</tr>
				</c:if>
				<c:if test="${!empty tList}">
					<c:forEach items="${tList}" var="t" varStatus="vs">
						<tr style="color: #B3B3B3;">
						<td><input type="checkbox" name="cb" value="${t.code }"/></td>
						<td>${vs.count }</td>
						<td>${t.code }</td>
						<td>${t.name }</td>
						<td>${t.description }</td>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>