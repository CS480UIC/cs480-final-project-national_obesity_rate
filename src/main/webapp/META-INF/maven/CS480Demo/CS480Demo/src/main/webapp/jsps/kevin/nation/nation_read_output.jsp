<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read State Output</title>
    
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
  <h1>Read State Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	
	state_id    :<input type="text" name="state_id" value="${state.state_id }" disabled/>
	<br/>
	currentState：<input type="text" name="currentState" value="${state.currentState }"/>
	<br/>
	health_data_state	：<input type="text" name="health_data_state" value="${state.health_data_state }"/>
	<br/>
	demographic_data_state	：<input type="text" name="demographic_data_state" value="${state.demographic_data_state }"/>
	<br/>
	
	
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
