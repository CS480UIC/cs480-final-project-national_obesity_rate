<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Nation</title>
    
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
  <h1>Update Nation</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
		
id:<input type="text" name="id" value="${nation.nation_id }" disabled/>
<br />

state：<input type="text" name="state" value="${nation.state }" disabled/>
<br />

health_data_nation	：<input type="text" name="health_data_nation" value="${nation.health_data_nation }" disabled/>
<br />

demographic_data_nation	：<input type="text" name="demographic_data_nation" value="${nation.demographic_data_nation }" disabled/>
<br />
	
</form>



<h1>Update the values below</h1>
<form action="<c:url value='/nationServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
		<input type="hidden" name="id" value="${nation.nation_id }"/>
				
	
	
id:<input type="text" name="id" value="${form.nation_id }" />
<br />

state：<input type="text" name="state" value="${form.state }" />
<br />

health_data_nation	：<input type="text" name="health_data_nation" value="${form.health_data_nation }" />
<br />

demographic_data_nation	：<input type="text" name="demographic_data_nation" value="${form.demographic_data_nation }" />
<br />
	
	
	<input type="submit" value="Update Nation"/>
	
	
</form>

</body>
</html>
