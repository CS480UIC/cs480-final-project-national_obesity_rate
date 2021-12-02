<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Nation Create</title>
    
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
  <h1>Create a Nation</h1>
<form action="<c:url value='/nationServletCreate'/>" method="post">

	id    :<input type="text" name="id" value="${form.id }"/>
	<span style="color: red; font-weight: 900">${errors.id }</span>
	<br/>
	state：<input type="text" name="state" value="${form.state }"/>
	<span style="color: red; font-weight: 900">${errors.state }</span>
	<br/>
	health_data_nation	：<input type="text" name="health_data_nation" value="${form.health_data_nation }"/>
	<span style="color: red; font-weight: 900">${errors.health_data_nation }</span>
	<br/>
	demographic_data_nation	：<input type="text" name="demographic_data_nation" value="${form.demographic_data_nation }"/>
	<span style="color: red; font-weight: 900">${errors.demographic_data_nation }</span>
	<br/>
	
	
	<input type="submit" value="Create nation"/>
</form>
  </body>
</html>
