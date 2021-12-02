<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #3cb371; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">Andy Hansana, Kevin Elliott, Aleksander Kartelyan </h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; <br/> 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Initialize Database</a> |&nbsp; <br/> 
			
			
			<a href="<c:url value='/jsps/nation/nationcreate.jsp'/>" target="_parent">Create Nation</a> |&nbsp; 
			<a href="<c:url value='/jsps/nation/nationread.jsp'/>" target="_parent">Read Nation</a> |&nbsp;
			<a href="<c:url value='/jsps/nation/nationupdate.jsp'/>" target="_parent">Update Nation</a> |&nbsp;	 
			<a href="<c:url value='/jsps/nation/nationdelete.jsp'/>" target="_parent">Delete Nation</a> |&nbsp;	 <br/> 

			
						
			<a href="<c:url value='/jsps/state/statecreate.jsp'/>" target="_parent">Create State</a> |&nbsp; 
			<a href="<c:url value='/jsps/state/stateread.jsp'/>" target="_parent">Read State</a> |&nbsp;
			<a href="<c:url value='/jsps/state/stateupdate.jsp'/>" target="_parent">Update State</a> |&nbsp;	 
			<a href="<c:url value='/jsps/state/statedelete.jsp'/>" target="_parent">Delete State</a> |&nbsp;	<br/>  
			
			<a href="<c:url value='/jsps/city/citycreate.jsp'/>" target="_parent">Create City</a> |&nbsp; 
			<a href="<c:url value='/jsps/city/cityread.jsp'/>" target="_parent">Read City</a> |&nbsp;
			<a href="<c:url value='/jsps/city/cityupdate.jsp'/>" target="_parent">Update City</a> |&nbsp;	 
			<a href="<c:url value='/jsps/city/citydelete.jsp'/>" target="_parent">Delete City</a> |&nbsp;	 <br/> 
			
			<a href="<c:url value='/jsps/health_data/health_data_create.jsp'/>" target="_parent">Create health_data</a> |&nbsp; 
			<a href="<c:url value='/jsps/health_data/health_data_read.jsp'/>" target="_parent">Read health_data</a> |&nbsp;
			<a href="<c:url value='/jsps/health_data/health_data_update.jsp'/>" target="_parent">Update health_data</a> |&nbsp;	 
			<a href="<c:url value='/jsps/health_data/health_data_delete.jsp'/>" target="_parent">Delete health_data</a> |&nbsp;	<br/> 
			
			<a href="<c:url value='/jsps/family/familycreate.jsp'/>" target="_parent">Create Family</a> |&nbsp; 
			<a href="<c:url value='/jsps/family/familyread.jsp'/>" target="_parent">Read Family</a> |&nbsp;
			<a href="<c:url value='/jsps/family/familyupdate.jsp'/>" target="_parent">Update Family</a> |&nbsp;	 
			<a href="<c:url value='/jsps/family/familydelete.jsp'/>" target="_parent">Delete Family</a> |&nbsp;	 <br/> 
			
			<a href="<c:url value='/jsps/education/educationcreate.jsp'/>" target="_parent">Create Education</a> |&nbsp; 
			<a href="<c:url value='/jsps/education/educationread.jsp'/>" target="_parent">Read Education</a> |&nbsp;
			<a href="<c:url value='/jsps/education/educationupdate.jsp'/>" target="_parent">Update Education</a> |&nbsp;	 
			<a href="<c:url value='/jsps/education/educationdelete.jsp'/>" target="_parent">Delete Education</a> |&nbsp;<br/> 
			
			<a href="<c:url value='/jsps/demographic/demographic_create.jsp'/>" target="_parent">Create Demographic</a> |&nbsp; 
			<a href="<c:url value='/jsps/demographic/demographic_read.jsp'/>" target="_parent">Read Demographic</a> |&nbsp;
			<a href="<c:url value='/jsps/demographic/demographic_update.jsp'/>" target="_parent">Update Demographic</a> |&nbsp;	 
			<a href="<c:url value='/jsps/demographic/demographic_delete.jsp'/>" target="_parent">Delete Demographic</a> |&nbsp;		<br/> 	  
			    
			    
			
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/jsps/user/queries.jsp'/>" target="body">Query Result</a> |&nbsp;&nbsp;
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> |&nbsp; 
			<a href="<c:url value='/jsps/nation/nationcreate.jsp'/>" target="_parent">Create Nation</a> |&nbsp; 
			<a href="<c:url value='/jsps/nation/nationread.jsp'/>" target="_parent">Read Nation</a> |&nbsp;
			<a href="<c:url value='/jsps/nation/nationupdate.jsp'/>" target="_parent">Update Nation</a> |&nbsp;	 
			<a href="<c:url value='/jsps/nation/nationdelete.jsp'/>" target="_parent">Delete Nation</a>	|&nbsp;	 
			
			
			<a href="<c:url value='/jsps/state/statecreate.jsp'/>" target="_parent">Create State</a> |&nbsp; 
			<a href="<c:url value='/jsps/state/stateread.jsp'/>" target="_parent">Read State</a> |&nbsp;
			<a href="<c:url value='/jsps/state/stateupdate.jsp'/>" target="_parent">Update State</a> |&nbsp;	 
			<a href="<c:url value='/jsps/state/statedelete.jsp'/>" target="_parent">Delete State</a> |&nbsp;	 
			
			<a href="<c:url value='/jsps/city/citycreate.jsp'/>" target="_parent">Create City</a> |&nbsp; 
			<a href="<c:url value='/jsps/city/cityread.jsp'/>" target="_parent">Read City</a> |&nbsp;
			<a href="<c:url value='/jsps/city/cityupdate.jsp'/>" target="_parent">Update City</a> |&nbsp;	 
			<a href="<c:url value='/jsps/city/citydelete.jsp'/>" target="_parent">Delete City</a> |&nbsp;	 
			
			<a href="<c:url value='/jsps/health_data/health_data_create.jsp'/>" target="_parent">Create health_data</a> |&nbsp; 
			<a href="<c:url value='/jsps/health_data/health_data_read.jsp'/>" target="_parent">Read health_data</a> |&nbsp;
			<a href="<c:url value='/jsps/health_data/health_data_update.jsp'/>" target="_parent">Update health_data</a> |&nbsp;	 
			<a href="<c:url value='/jsps/health_data/health_data_delete.jsp'/>" target="_parent">Delete health_data</a> |&nbsp;	
			
			<a href="<c:url value='/jsps/family/familycreate.jsp'/>" target="_parent">Create Family</a> |&nbsp; 
			<a href="<c:url value='/jsps/family/familyread.jsp'/>" target="_parent">Read Family</a> |&nbsp;
			<a href="<c:url value='/jsps/family/familyupdate.jsp'/>" target="_parent">Update Family</a> |&nbsp;	 
			<a href="<c:url value='/jsps/family/familydelete.jsp'/>" target="_parent">Delete Family</a> |&nbsp;	 
			
						
			<a href="<c:url value='/jsps/education/educationcreate.jsp'/>" target="_parent">Create Education</a> |&nbsp; 
			<a href="<c:url value='/jsps/education/educationread.jsp'/>" target="_parent">Read Education</a> |&nbsp;
			<a href="<c:url value='/jsps/education/educationupdate.jsp'/>" target="_parent">Update Education</a> |&nbsp;	 
			<a href="<c:url value='/jsps/education/educationdelete.jsp'/>" target="_parent">Delete Education</a> |&nbsp;	
			
			<a href="<c:url value='/jsps/demographic/demographic_create.jsp'/>" target="_parent">Create Demographic</a> |&nbsp; 
			<a href="<c:url value='/jsps/demographic/demographic_read.jsp'/>" target="_parent">Read Demographic</a> |&nbsp;
			<a href="<c:url value='/jsps/demographic/demographic_update.jsp'/>" target="_parent">Update Demographic</a> |&nbsp;	 
			<a href="<c:url value='/jsps/demographic/demographic_delete.jsp'/>" target="_parent">Delete Demographic</a> |&nbsp;		  
			      
			    			

		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

