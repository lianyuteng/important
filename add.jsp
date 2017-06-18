<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

   <form action="<%=request.getContextPath() %>/data/add"  method="post">
     名字： <input name="name" /><br>
         地址 ： <input name="address" /><br>
            邮箱 ： <input name="email" /><br>
               手机号： <input name="phone" /><br>
                 生日格式 (格式: yyyy-MM-dd）<br>
                  生日： <input name="birthday" /><br>
                     数学成绩： <input name="math" /><br>
                        语文成绩： <input name="yuwen" /><br>
                            英语成绩： <input name="english" /><br>
                              html成绩： <input name="html" /><br>
   <input type="submit" value="添加" > &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/>   
   </form>



</body>
</html>