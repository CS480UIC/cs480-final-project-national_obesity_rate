<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete State</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update State</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>

	
	state_id    :<input type="text" name="id" value="${state.state_id }" disabled/>
	<br/>
	currentState：<input type="text" name="currentState" value="${state.currentState }" disabled/>
	<br/>
	health_data_state	：<input type="text" name="health_data_state" value="${state.health_data_state }" disabled/>
	<br/>
	demographic_data_state	：<input type="text" name="demographic_data_state" value="${state.demographic_data_state }" disabled/>
	<br/>
	
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/stateServletUpdate'/>" method="post">

		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="username" value="${state.state_id }"/>
				
				
	
	currentState：<input type="text" name="currentState" value="${form.currentState }" />
	<br/>
	health_data_state	：<input type="text" name="health_data_state" value="${form.health_data_state }" />
	<br/>
	demographic_data_state	：<input type="text" name="demographic_data_state" value="${form.demographic_data_state }" />
	<br/>
	
	
	<input type="submit" value="Update State"/>
</form>

</body>
</html>
