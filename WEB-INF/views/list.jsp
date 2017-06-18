<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%   String basePath =  request.getContextPath();
     request.setAttribute("bashPath", basePath);
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Css/list.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function s(){
	
	window.open('${bashPath}/add.jsp','addWindows','height=100,width=400,top=100,left=100,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')
	
	
}



</script>

</head>
<body>


<h1  align="center">学生列表详情界面</h1>   
 
<div id="tablediv">
<span ><a>${result2}${id}</a></span>

<table border="5">

<tr>
<td>编号</td>
<td>ID</td>
<td>名字</td>
<td>地址</td>
<td>邮件</td>
<td>手机号</td>
<td>生日</td>
<td>数学成绩</td>
<td>语文</td>
<td>英语</td>
<td>html</td>
</tr>
<c:forEach items="${requestScope.result}" var="x" varStatus="vs">



<tr>
<td>${vs.count}</td>
<td>${x.id }</td>
<td>${x.name }</td>
<td>${x.address }</td>
<td>${x.email }</td>
<td>${x.phone }</td>
<td>${x.birthday}</td>
<td>${x.math }</td>
<td>${x.yuwen }</td>
<td>${x.english }</td>
<td>${x.html}</td>
<td><button onclick="update()">修改</button></td>
<td><button  onclick="delete()">删除</button></td>
</tr>




</c:forEach>
</table>
<a href="<%= request.getContextPath()%>/add.jsp">新增学生</a>
</div>






</body>
</html>