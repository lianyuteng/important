<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<link href="Css/index.css" type="test/css" rel="stylesheet">
<script type="text/javascript">
function wo() {
	 var x=document.getElementById("name");
		var xmlhttp;
		xmlhttp  = new XMLHttpRequest();
		xmlhttp.open("GET","/springmvc-test/user/checkNameExist?name="+x.value,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
				 var x = xmlhttp.responseText;
				 document.getElementById("nameResult").innerHTML=x;
			}
		}
}
function wocao(){
	alert("wocao");
	
	window.open ('list.jsp','newwindow','height=300px,width=100,top=50,left=50,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
	
}


</script>
</head>
<body>
	<h2 align="center" onclick="wocao()">登录页面!</h2>
	<div  id="div1" >
		<form action="<%=request.getContextPath()%>/user/login" method="post" >
			<table border="0">
				<tr>
					<td>name :</td> 
					<td><input type="text" name="name"   id="name"   onmouseleave="wo()"></td>
					<td><h2 id="nameResult"></h2></td>
				</tr>
				<tr>
					<td>password :</td>
					<td><input type="password" name="password"> </td>
					<td><h4 id="passwordResult"></h4></td>
				</tr>
<tr><td  colspan="2" align="center"> <br><br> <input type="submit"  value="登录"    ></td></tr>
			</table>
		</form>
	</div>




</body>
</html>
