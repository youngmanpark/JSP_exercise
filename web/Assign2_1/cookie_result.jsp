<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>cookie Test-Get 116Cookie</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  Cookie[] c = request.getCookies();
  if(c != null){
    for(int i = 0; i<c.length; i++){
      String name = c[i].getName();//쿠키 이름
      String value = c[i].getValue();//쿠키 값
        out.print(name +"은 "+ value+"입니다.<br>");
    }
  }
%>
</body>
</html>
